import network
import socket
import json
from firebase import firebase

# Connect to network
ssid = 'Smile'
password = 'asslema8'

wlan = network.WLAN(network.STA_IF)
wlan.active(True)
wlan.connect(ssid, password)

# Wait for connection
while not wlan.isconnected():
    pass

print('Connected')
status = wlan.ifconfig()
print('IP:', status[0])

# Firebase configuration
firebase_url = "https://tsat-top-100.firebaseio.com/"
firebase_secret = "BBXdchLYR0Gioy1p5UriO4EvhI96So2II9lTvfqW"

# Initialize Firebase application
fb = firebase.FirebaseApplication(firebase_url, None)

# Open socket
addr = socket.getaddrinfo('0.0.0.0', 80)[0][-1]

s = socket.socket()
s.bind(addr)
s.listen(1)

print('Listening on', addr)

# Listen for connections
while True:
    try:
        cl, addr = s.accept()
        print('Client connected from', addr)
        request = cl.recv(1024)
        print(request)

        # Extract data from request
        data = json.loads(request.decode())

        # Store data in Firebase Realtime Database
        result = fb.post('/data_zone2', data, params={'auth': firebase_secret})
        print("Firebase response:", result)

        cl.close()

    except OSError as e:
        cl.close()
        print('Connection closed')
