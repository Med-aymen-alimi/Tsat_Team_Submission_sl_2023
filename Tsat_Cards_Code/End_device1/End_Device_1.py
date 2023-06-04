import machine
import utime
import network
import socket
import time
import random
import dht
import YF_S201
import onewire
import ds18x20

# Connect to network
ssid = 'Smile'
password = 'asslema8'

wlan = network.WLAN(network.STA_IF)
wlan.active(True)
wlan.connect(ssid, password)
while not wlan.isconnected() and wlan.status() >= 0:
    print("Waiting to connect:")
    time.sleep(1)

# Should be connected and have an IP address
wlan.status()  # 3 == success
wlan.ifconfig()
print(wlan.ifconfig())

# Configure DHT sensor
dht_sensor = dht.DHT22(machine.Pin(5))  # DHT22 sensor connected to Pin 5

# Configure water flow sensor
flow_sensor = YF_S201.YFS201(machine.Pin(8))  # YF-S201 sensor connected to Pin 8

# Configure LDR sensor
ldr_pin = machine.Pin(26)  # LDR sensor connected to Pin 26
ldr = machine.ADC(ldr_pin)

# Configure DS18B20 temperature sensor
ds_pin = machine.Pin(12)  # DS18B20 sensor connected to Pin 12
ds_sensor = ds18x20.DS18X20(onewire.OneWire(ds_pin))
roms = ds_sensor.scan()

# Server address and port
server_address = "192.168.144.17"
server_port = 80

while True:
    # Read sensor values
    dht_sensor.measure()  # Measure temperature and humidity
    temperature = dht_sensor.temperature()
    humidity = dht_sensor.humidity()

    flow_rate = flow_sensor.read_flow_rate()  # Read flow rate from YF-S201 sensor
    total_volume = flow_sensor.read_total_volume()

    ldr_value = ldr.read()  # Read LDR sensor value

    ds_sensor.convert_temp()  # Convert DS18B20 temperature sensor readings
    utime.sleep_ms(750)  # Wait for conversion to complete
    ds_temperature = ds_sensor.read_temp(roms[0])  # Read DS18B20 temperature

    # Create a socket and make an HTTP request
    s = socket.socket()
    s.connect((server_address, server_port))

    # Construct the data to be sent to the server
    data = "temperature={:.2f}&humidity={:.2f}&lightning={:.2f}&flow_rate={:.2f}&total_volume={:.2f}&ldr_value={:.2f}&ds_temperature={:.2f}".format(
        temperature, humidity, 0.00, flow_rate, total_volume, ldr_value, ds_temperature)

    # Send the data as a POST request
    request = "POST /data HTTP/1.1\r\n"
    request += "Host: {}\r\n".format(server_address)
    request += "Content-Type: application/x-www-form-urlencoded\r\n"
    request += "Content-Length: {}\r\n".format(len(data))
    request += "\r\n"
    request += data

    s.send(request.encode())

    # Wait for the response from the server
    response = s.recv(1024)

    # Print the response
    print("Server response:", response)

    s.close()
    time.sleep(2)
