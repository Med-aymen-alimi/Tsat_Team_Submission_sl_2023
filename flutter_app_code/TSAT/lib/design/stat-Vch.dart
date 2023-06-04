import 'package:flutter/material.dart';
import 'package:myapp/design/cities.dart';

class StatVchPage extends StatefulWidget {
  const StatVchPage({Key? key}) : super(key: key);

  @override
  _StatVchPageState createState() => _StatVchPageState();
}

class _StatVchPageState extends State<StatVchPage> {
  bool isEmergencyActivated = false;
  Color originalBackgroundColor = Color.fromARGB(202, 182, 255, 155);
  Color emergencyBackgroundColor = Colors.red;

  void activateEmergencyState() {
    setState(() {
      isEmergencyActivated = !isEmergencyActivated;
    });
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;

    Color backgroundColor = isEmergencyActivated ? emergencyBackgroundColor : originalBackgroundColor;
    Color iconColor = isEmergencyActivated ? Colors.white : Colors.green;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0 * fem),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Introduction Text
              Text(
                'Emergency Page',
                style: TextStyle(
                  fontSize: 34 * fem,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 20 * fem),

              Text(
                'Use the button below to activate or desactivate the emergency state:',
                style: TextStyle(
                  fontSize: 16 * fem,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 40 * fem),

              // Activate Emergency Button
              Container(
                width: double.infinity,
                height: 56 * fem,
                child: ElevatedButton(
                  onPressed: () {
                    activateEmergencyState();
                    // Change background color based on emergency state
                    if (isEmergencyActivated) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Emergency Activated'),
                            content: Text('The emergency state has been activated.'),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Emergency Desactivated'),
                            content: Text('The emergency state has been desactivated.'),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: isEmergencyActivated ? Colors.green : Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0 * fem),
                    ),
                  ),
                  child: Text(
                    isEmergencyActivated ? 'Desactivate Emergency' : 'Activate Emergency',
                    style: TextStyle(fontSize: 18 * fem),
                  ),
                ),
              ),

              SizedBox(height: 20 * fem),

              // Alert Sign
              Visibility(
                visible: isEmergencyActivated,
                child: Icon(
                  isEmergencyActivated ? Icons.error_outline : Icons.check_circle_outline,
                  color: iconColor,
                  size: 96 * fem,
                ),
              ),

              SizedBox(height: 20 * fem),

              // Emergency State Text
              if (isEmergencyActivated)
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16.0 * fem),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0 * fem),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Text(
                    'Emergency State Activated',
                    style: TextStyle(
                      fontSize: 18 * fem,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

              SizedBox(height: 40 * fem),

              // Back Button
              Padding(
                padding: EdgeInsets.only(top: 100 * fem),
                child: Container(
                  width: double.infinity,
                  height: 56 * fem,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate back to CitiesPage
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CitiesPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0 * fem),
                      ),
                    ),
                    child: Text(
                      'Back',
                      style: TextStyle(fontSize: 18 * fem),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
