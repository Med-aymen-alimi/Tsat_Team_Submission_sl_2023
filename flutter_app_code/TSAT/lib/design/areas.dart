import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class AreasPage extends StatelessWidget {
  const AreasPage({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // areaskwP (122:144)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: const Color(0xffeeeeee),
          borderRadius: BorderRadius.circular(50*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              // autogroup1yz7rUd (VYtcztJwCgouATFWd91yZ7)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
              padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 26*fem),
              width: 441*fem,
              decoration: const BoxDecoration (
                color: Color(0xff4db4d7),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogrouppgo7X4y (VYtdAYhW7vB5zLuMiFpGo7)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20.32*fem, 0*fem),
                    width: 420.68*fem,
                    height: 289*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // shapedNu (122:146)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 254*fem,
                              height: 228*fem,
                              child: Image.asset(
                                'assets/design/images/shape-sJM.png',
                                width: 254*fem,
                                height: 228*fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // notificationjRw (122:147)
                          left: 35*fem,
                          top: 8*fem,
                          child: SizedBox(
                            width: 319.68*fem,
                            height: 27*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // 4DK (I122:147;6:2)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 210.82*fem, 0*fem),
                                  child: Text(
                                    '9:41',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5*ffem/fem,
                                      color: const Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // signalaBf (I122:147;1:10)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.83*fem, 1*fem),
                                  width: 20.35*fem,
                                  height: 17.6*fem,
                                  child: Image.asset(
                                    'assets/design/images/signal.png',
                                    width: 20.35*fem,
                                    height: 17.6*fem,
                                  ),
                                ),
                                Container(
                                  // wifiswT (I122:147;1:5)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.68*fem, 1*fem),
                                  width: 22*fem,
                                  height: 15.4*fem,
                                  child: Image.asset(
                                    'assets/design/images/wifi-Zuf.png',
                                    width: 22*fem,
                                    height: 15.4*fem,
                                  ),
                                ),
                                Container(
                                  // batterythreequartersPeu (I122:147;1:7)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                  width: 22*fem,
                                  height: 11*fem,
                                  child: Image.asset(
                                    'assets/design/images/battery-three-quarters-c5j.png',
                                    width: 22*fem,
                                    height: 11*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // ellipse483hQh (122:161)
                          left: 139*fem,
                          top: 98*fem,
                          child: Align(
                            child: SizedBox(
                              width: 97*fem,
                              height: 97*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(48.5*fem),
                                  image: const DecorationImage (
                                    fit: BoxFit.cover,
                                    image: AssetImage (
                                      'assets/design/images/ellipse-483-bg-5hP.png',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // sfaxbiralinBF (122:148)
                    margin: EdgeInsets.fromLTRB(75.67*fem, 0*fem, 0*fem, 0*fem),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: SafeGoogleFont (
                          'Poppins',
                          fontSize: 36*ffem,
                          height: 1.5*ffem/fem,
                          color: const Color(0xffffffff),
                        ),
                        children: [
                          TextSpan(
                            text: 'SFAX\n',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 36*ffem,
                              fontWeight: FontWeight.w300,
                              height: 1.5*ffem/fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                          TextSpan(
                            text: 'Bir ali',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w300,
                              height: 1.5*ffem/fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group168JBX (122:149)
              margin: EdgeInsets.fromLTRB(20*fem, 0*fem, 20*fem, 0*fem),
              width: double.infinity,
              height: 501*fem,
              child: Stack(
                children: [
                  Positioned(
                    // rectangle259bRX (122:150)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 335*fem,
                        height: 501*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(10*fem),
                            color: const Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x3f000000),
                                offset: Offset(0*fem, 4*fem),
                                blurRadius: 2*fem,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // ellipse484G1s (140:111)
                    left: 20*fem,
                    top: 392.9997558594*fem,
                    child: Align(
                      child: SizedBox(
                        width: 57*fem,
                        height: 58*fem,
                        child: Image.asset(
                          'assets/design/images/ellipse-484.png',
                          width: 57*fem,
                          height: 58*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle271mDX (140:130)
                    left: 12*fem,
                    top: 431.9997558594*fem,
                    child: Align(
                      child: SizedBox(
                        width: 303*fem,
                        height: 31*fem,
                        child: Container(
                          decoration: const BoxDecoration (
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle267VQR (122:182)
                    left: 22*fem,
                    top: 443.9997558594*fem,
                    child: Align(
                      child: SizedBox(
                        width: 110*fem,
                        height: 37*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(14*fem),
                              border: Border.all(color: const Color(0xff000000)),
                              color: const Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x3f000000),
                                  offset: Offset(0*fem, 4*fem),
                                  blurRadius: 2*fem,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle266AmT (122:151)
                    left: 175*fem,
                    top: 443.9997558594*fem,
                    child: Align(
                      child: SizedBox(
                        width: 142*fem,
                        height: 37*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(14*fem),
                            border: Border.all(color: const Color(0xff000000)),
                            color: const Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x3f000000),
                                offset: Offset(0*fem, 4*fem),
                                blurRadius: 2*fem,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // areasRhP (122:152)
                    left: 84*fem,
                    top: 25.9997558594*fem,
                    child: Align(
                      child: SizedBox(
                        width: 85*fem,
                        height: 42*fem,
                        child: Text(
                          'Areas',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 28*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5*ffem/fem,
                            color: const Color(0xcc000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // area1LJZ (143:157)
                    left: 195*fem,
                    top: 21.9997563362*fem,
                    child: Align(
                      child: SizedBox(
                        width: 42*fem,
                        height: 42*fem,
                        child: Image.asset(
                          'assets/design/images/area-1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // pluscircleFwK (122:153)
                    left: 290*fem,
                    top: 452.9997558594*fem,
                    child: Align(
                      child: SizedBox(
                        width: 20*fem,
                        height: 20*fem,
                        child: Image.asset(
                          'assets/design/images/plus-circle-KhP.png',
                          width: 20*fem,
                          height: 20*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle265ZSD (122:157)
                    left: 317*fem,
                    top: 111.9998474121*fem,
                    child: Align(
                      child: SizedBox(
                        width: 3*fem,
                        height: 309*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(3*fem),
                            color: const Color(0xffd9d9d9),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // area1surface6000m2g13 (140:106)
                    left: 105*fem,
                    top: 111.9998397827*fem,
                    child: Align(
                      child: SizedBox(
                        width: 107*fem,
                        height: 90*fem,
                        child: Text(
                          'Area 1\nSurface : 6000m2\n\n\n\n',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // area2surface5000m2Mcy (140:114)
                    left: 105*fem,
                    top: 208.9997711182*fem,
                    child: Align(
                      child: SizedBox(
                        width: 107*fem,
                        height: 72*fem,
                        child: Text(
                          'Area 2\nSurface : 5000m2\n\n\n',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // area3surface4000m2r3w (140:115)
                    left: 100*fem,
                    top: 309.9997558594*fem,
                    child: Align(
                      child: SizedBox(
                        width: 107*fem,
                        height: 72*fem,
                        child: Text(
                          'Area 3\nSurface : 4000m2\n\n\n',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // area4surface8000m2wLH (140:116)
                    left: 101*fem,
                    top: 390.9997558594*fem,
                    child: Align(
                      child: SizedBox(
                        width: 107*fem,
                        height: 72*fem,
                        child: Text(
                          'Area 4\nSurface : 8000m2\n\n\n',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // line7EaH (145:289)
                    left: 0*fem,
                    top: 79.9997558594*fem,
                    child: Align(
                      child: SizedBox(
                        width: 335*fem,
                        height: 1*fem,
                        child: Container(
                          decoration: const BoxDecoration (
                            color: Color(0xff838383),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // linesXpH (122:163)
                    left: 50.9958496094*fem,
                    top: 187.9997558594*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0*fem, 94*fem, 0*fem, 100*fem),
                      width: 243.01*fem,
                      height: 195*fem,
                      child: Center(
                        // line2Eih (122:165)
                        child: SizedBox(
                          width: double.infinity,
                          height: 1*fem,
                          child: Container(
                            decoration: const BoxDecoration (
                              color: Color(0xffdbdbdb),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // addnewareanER (122:167)
                    left: 180*fem,
                    top: 450.9997558594*fem,
                    child: Align(
                      child: SizedBox(
                        width: 107*fem,
                        height: 23*fem,
                        child: Text(
                          'Add new Area',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 15*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // backsWm (122:183)
                    left: 60*fem,
                    top: 450.9997558594*fem,
                    child: Align(
                      child: SizedBox(
                        width: 38*fem,
                        height: 23*fem,
                        child: Text(
                          'Back',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 15*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // ellipse483xHK (140:110)
                    left: 17*fem,
                    top: 109.9997558594*fem,
                    child: Align(
                      child: SizedBox(
                        width: 57*fem,
                        height: 58*fem,
                        child: Image.asset(
                          'assets/design/images/ellipse-483.png',
                          width: 57*fem,
                          height: 58*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // ellipse485UWZ (140:112)
                    left: 17*fem,
                    top: 308.9997558594*fem,
                    child: Align(
                      child: SizedBox(
                        width: 57*fem,
                        height: 58*fem,
                        child: Image.asset(
                          'assets/design/images/ellipse-485.png',
                          width: 57*fem,
                          height: 58*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // ellipse486Bfs (140:113)
                    left: 17*fem,
                    top: 208.9997558594*fem,
                    child: Align(
                      child: SizedBox(
                        width: 57*fem,
                        height: 58*fem,
                        child: Image.asset(
                          'assets/design/images/ellipse-486.png',
                          width: 57*fem,
                          height: 58*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle268heD (140:117)
                    left: 85*fem,
                    top: 156.9997558594*fem,
                    child: Align(
                      child: SizedBox(
                        width: 204*fem,
                        height: 26*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(8*fem),
                              border: Border.all(color: const Color(0xff000000)),
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // checkinformationsztD (140:119)
                    left: 100*fem,
                    top: 161.9997558594*fem,
                    child: Align(
                      child: SizedBox(
                        width: 124*fem,
                        height: 18*fem,
                        child: Text(
                          ' Check informations ',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle269uEV (140:121)
                    left: 85*fem,
                    top: 350.9997558594*fem,
                    child: Align(
                      child: SizedBox(
                        width: 204*fem,
                        height: 26*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(8*fem),
                            border: Border.all(color: const Color(0xff000000)),
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // checkinformationsQh3 (140:122)
                    left: 95*fem,
                    top: 355.9997558594*fem,
                    child: Align(
                      child: SizedBox(
                        width: 121*fem,
                        height: 18*fem,
                        child: Text(
                          ' Check informations',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle270Wzy (140:124)
                    left: 82*fem,
                    top: 250.9997558594*fem,
                    child: Align(
                      child: SizedBox(
                        width: 207*fem,
                        height: 26*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(8*fem),
                            border: Border.all(color: const Color(0xff000000)),
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // information2pkm (145:297)
                    left: 240*fem,
                    top: 160.9997558594*fem,
                    child: Align(
                      child: SizedBox(
                        width: 20*fem,
                        height: 19*fem,
                        child: Image.asset(
                          'assets/design/images/information-2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // information3Ywf (145:298)
                    left: 240*fem,
                    top: 255.9997558594*fem,
                    child: Align(
                      child: SizedBox(
                        width: 20*fem,
                        height: 19*fem,
                        child: Image.asset(
                          'assets/design/images/information-3.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // checkinformationsGsf (140:125)
                    left: 97*fem,
                    top: 255.9997558594*fem,
                    child: Align(
                      child: SizedBox(
                        width: 124*fem,
                        height: 18*fem,
                        child: Text(
                          ' Check informations ',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5*ffem/fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // information1z2y (145:296)
                    left: 240*fem,
                    top: 354.9997558594*fem,
                    child: Align(
                      child: SizedBox(
                        width: 20*fem,
                        height: 19*fem,
                        child: Image.asset(
                          'assets/design/images/information-1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
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