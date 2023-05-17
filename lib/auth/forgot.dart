import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ForgotpasswordWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 267.w,
      height: 579.h,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(19),
          topRight: Radius.circular(19),
          bottomLeft: Radius.circular(19),
          bottomRight: Radius.circular(19),
        ),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              offset: Offset(0, 6.4),
              blurRadius: 27.6)
        ],
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Stack(
        children: [
          Positioned(
              top: 42,
              left: 88,
              child: Text(
                'Forgot Pasword',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(68, 68, 68, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 10.sp,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
            top: 104,
            left: 74,
            child: Container(
              decoration: const BoxDecoration(),
              padding: const EdgeInsets.symmetric(
                  horizontal: 1.3742510080337524, vertical: 1.3742510080337524),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Enter Email Address',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(68, 68, 68, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 10.99400806427002,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 180.02642822265625,
            left: 96.19756317138672,
            child: Container(
              decoration: const BoxDecoration(),
              padding: const EdgeInsets.symmetric(
                  horizontal: 1.3742510080337524, vertical: 1.3742510080337524),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Back to sign in',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(171, 171, 171, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 9.619756698608398,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 362.8026428222656,
            left: 79.70657348632812,
            child: Container(
              decoration: const BoxDecoration(),
              padding: const EdgeInsets.symmetric(
                  horizontal: 1.3742510080337524, vertical: 1.3742510080337524),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Do you have an account?',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(171, 171, 171, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 8.245505332946777,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 137.4256591796875,
            left: 10.994029998779297,
            child: Container(
              width: 245.9909210205078,
              height: 34.35627746582031,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.613765716552734),
                  topRight: Radius.circular(20.613765716552734),
                  bottomLeft: Radius.circular(20.613765716552734),
                  bottomRight: Radius.circular(20.613765716552734),
                ),
                border: Border.all(
                  color: const Color.fromRGBO(68, 68, 68, 1),
                  width: 0.6871255040168762,
                ),
              ),
              child: const Stack(
                children: <Widget>[
                  Positioned(
                    top: 11.679656028747559,
                    left: 19.9266414642334,
                    child: Text(
                      'example@gmail.com',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(143, 143, 143, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 8.245505332946777,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 386.8518981933594,
            left: 10.994029998779297,
            child: Container(
              width: 245.9909210205078,
              height: 34.35627746582031,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.613765716552734),
                  topRight: Radius.circular(20.613765716552734),
                  bottomLeft: Radius.circular(20.613765716552734),
                  bottomRight: Radius.circular(20.613765716552734),
                ),
                border: Border.all(
                  color: const Color.fromRGBO(68, 68, 68, 1),
                  width: 0.6871255040168762,
                ),
              ),
              child: const Stack(
                children: <Widget>[
                  Positioned(
                    top: 11.681928634643555,
                    left: 101.00748443603516,
                    child: Text(
                      'Sign up',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(143, 143, 143, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 10.99400806427002,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 215.06939697265625,
            left: 10.994029998779297,
            child: Container(
              width: 245.9909210205078,
              height: 34.35627746582031,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.613765716552734),
                  topRight: Radius.circular(20.613765716552734),
                  bottomLeft: Radius.circular(20.613765716552734),
                  bottomRight: Radius.circular(20.613765716552734),
                ),
                gradient: LinearGradient(
                    begin: Alignment(1, 0),
                    end: Alignment(0, 1),
                    colors: [
                      Color.fromRGBO(255, 75, 31, 1),
                      Color.fromRGBO(255, 144, 104, 1)
                    ]),
              ),
              child: const Stack(
                children: <Widget>[
                  Positioned(
                    top: 10.306676864624023,
                    left: 107.87870788574219,
                    child: Text(
                      'Send',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 10.99400806427002,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 292.0288391113281,
            left: 102.38168334960938,
            child: Container(
              decoration: const BoxDecoration(),
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text(
                    'or',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 10.99400806427002,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  ),
                  const SizedBox(height: 6.184129238128662),
                  Container(
                    decoration: const BoxDecoration(),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          width: 12.368258476257324,
                          height: 12.368258476257324,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                          child: const Stack(
                            children: <Widget>[
                              //     Positioned(
                              //   top: -0.0005649884697049856,
                              //   left: 0.00002697978743526619,
                              //   child: SvgPicture.asset(
                              //   'assets/images/vector.svg',
                              //   semanticsLabel: 'vector'
                              // );
                              // ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 13.055383682250977),
                        Container(
                          width: 12.368258476257324,
                          height: 12.368258476257324,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                          child: const Stack(
                            children: <Widget>[
                              //     Positioned(
                              //   top: -0.0005649884697049856,
                              //   left: 0.000012828624676330946,
                              //   child: SvgPicture.asset(
                              //   'assets/images/vector.svg',
                              //   semanticsLabel: 'vector'
                              // );
                              // ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 13.055383682250977),
                        Container(
                          decoration: const BoxDecoration(),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 0),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              //     SvgPicture.asset(
                              //   'assets/images/vector.svg',
                              //   semanticsLabel: 'vector'
                              // );,
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
