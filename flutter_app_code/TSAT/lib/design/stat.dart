import 'package:flutter/material.dart';

import 'package:myapp/design/area1.dart';
import 'package:myapp/design/stat-Vch.dart';

class StatPage extends StatelessWidget {
  const StatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return Scaffold(
      backgroundColor: const Color(0xFFE5F3F1),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 40 * fem), // Add space at the top

                // Centered Image
                Container(
                  margin: EdgeInsets.only(bottom: 20 * fem),
                  width: 200 * fem,
                  height: 200 * fem,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100 * fem),
                    color: Colors.blue, // Placeholder color
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/design/images/heirloom-tomatoes.jpg'),
                    ),
                  ),
                ),

                // Area 1 Text
                Container(
                  margin: EdgeInsets.only(bottom: 50 * fem),
                  child: Column(
                    children: [
                      Text(
                        'Zone 1',
                        style: TextStyle(
                          fontSize: 24 * fem,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10 * fem),
                    ],
                  ),
                ),

                // Dashboard Widgets
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DashboardWidget(
                      label: 'Water Needed',
                      value: '10 L',
                    ),
                    DashboardWidget(
                      label: 'Water Consumed',
                      value: '5 L',
                    ),
                  ],
                ),

                SizedBox(height: 40 * fem),

                SizedBox(height: 40 * fem),

                // Back Button and Emergency Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 40 * fem, top: 146 * fem),
                      width: 140 * fem,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigate to Area1Page
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Area1Page()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          padding: EdgeInsets.symmetric(vertical: 16 * fem),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8 * fem),
                          ),
                        ),
                        child: Text(
                          'Back',
                          style: TextStyle(fontSize: 16 * fem),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 40 * fem, top: 146 * fem),
                      width: 140 * fem,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigate to StatVchPage
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => StatVchPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          padding: EdgeInsets.symmetric(vertical: 16 * fem),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8 * fem),
                          ),
                        ),
                        child: Text(
                          'Emergency',
                          style: TextStyle(fontSize: 16 * fem),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 40 * fem),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DashboardWidget extends StatelessWidget {
  final String label;
  final String value;

  const DashboardWidget({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / 375;
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 18 * fem,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 10 * fem),
        Text(
          value,
          style: TextStyle(
            fontSize: 24 * fem,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
