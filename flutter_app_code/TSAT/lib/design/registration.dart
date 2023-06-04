import 'package:flutter/gestures.dart';

import 'cities.dart';
import 'package:myapp/design/login.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: EdgeInsets.all(20 * fem),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Registration',
              style: TextStyle(
                fontSize: 24 * fem,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20 * fem),
            TextFormField(
              style: TextStyle(fontSize: 16 * fem, color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Name',
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20 * fem),
            TextFormField(
              style: TextStyle(fontSize: 16 * fem, color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20 * fem),
            TextFormField(
              obscureText: true,
              style: TextStyle(fontSize: 16 * fem, color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20 * fem),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CitiesPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              child: Text(
                'Sign Up',
                style: TextStyle(fontSize: 16 * fem, color: Colors.blue),
              ),
            ),
            SizedBox(height: 10 * fem), // Added SizedBox for spacing
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Already have an account? Login',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
