import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/design/login.dart';

class Scene extends StatelessWidget {
  const Scene({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return SizedBox(
      width: double.infinity,
      child: Container(
        width: double.infinity,
        height: 812 * fem,
        decoration: BoxDecoration(
          color: const Color(0xffeeeeee),
          borderRadius: BorderRadius.circular(50 * fem),
        ),
        child: Stack(
          children: [
            Positioned(
              // buttonXzd (6:80)
              left: 26.0825195312 * fem,
              top: 597.4174804688 * fem,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()), // Navigate to the LoginPage
                  );
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 339 * fem,
                  height: 68 * fem,
                  decoration: BoxDecoration(
                    color: const Color(0xff0076be),
                    borderRadius: BorderRadius.circular(5 * fem),
                  ),
                  child: Center(
                    child: Text(
                      'Get Started',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Other widget positions...
            Positioned(
              // shapeAnh (6:78)
              left: 0 * fem,
              top: 0 * fem,
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 254 * fem,
                  height: 228 * fem,
                  child: Image.asset(
                    'assets/design/images/shape-aiZ.png',
                    width: 254 * fem,
                    height: 228 * fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // n119zd (174:126)
              left: 0 * fem,
              right: 0 * fem,
              top: 0 * fem,
              bottom: 0 * fem,
              child: Align(
                child: SizedBox(
                  width: 400 * fem,
                  height: 400 * fem,
                  child: Image.asset(
                    'assets/design/images/logo1.png',
                  ),
                ),
              ),
            ),

            Positioned(
              // consumelessgainmoremDP (115:152)
              left: 37.9179077148 * fem,
              top: 530 * fem,
              child: Align(
                child: SizedBox(
                  width: 285 * fem,
                  height: 33 * fem,
                  child: Text(
                    'Consume less, Gain more',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 22 * ffem,
                      fontWeight: FontWeight.w300,
                      height: 1.5 * ffem / fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // humaaansstanding193gh (117:160)
              right: 0 * fem,
              bottom: 0 * fem,
              child: Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  width: 157 * fem,
                  height: 219 * fem,
                  child: Image.asset(
                    'assets/design/images/humaaans-standing-19.png',
                    width: 157 * fem,
                    height: 219 * fem,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
