import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:riderapp/screens/home_page.dart';
import 'package:riderapp/screens/login_page.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(alignment: Alignment.center, children: [
          Image.asset(
            'assets/bike.webp',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          if (defaultTargetPlatform == TargetPlatform.iOS)
            CupertinoActivityIndicator(
              color: Colors.white,
              radius: 7.w,
            )
          else
            const CircularProgressIndicator(
              color: Colors.white,
            ),
        ]),
      ),
    );
  }
}
