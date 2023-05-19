// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:riderapp/auth/forgot_pass.dart';
import 'package:riderapp/screens/home_page.dart';
import 'package:riderapp/auth/signup_page.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  bool rememberMe = false;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void openWebsite() async {
    const url = 'https://www.example.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(254, 254, 255, 255),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 5.h),
                    child: Image.asset(
                      "assets/logo_riderop.png",
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Hello, Riders!👋",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 3.h,
                      fontWeight: FontWeight.w500),
                ),
                const Text(
                  "Welcome back!",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 5.h,
                ),
                FormField(
                  builder: (field) {
                    return TextField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "Enter your email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2.w),
                          borderSide: const BorderSide(),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 3.h,
                ),
                FormField(
                  builder: (field) {
                    return TextFormField(
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Enter your password",
                        suffixIcon: GestureDetector(
                          onTap: _togglePasswordVisibility,
                          child: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2.w),
                          borderSide: const BorderSide(),
                        ),
                      ),
                    );
                  },
                ),
                Row(
                  children: [
                    Checkbox(
                      value: rememberMe,
                      onChanged: (value) {
                        rememberMe = value!;
                      },
                    ),
                    const Text('Remember Me'),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ForgotPasswordPage()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 6.h,
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 81, 18, 163))),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (Context) => const HomePage()));
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 120,
                        height: 1,
                        color: Colors.black,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or With',
                        ),
                      ),
                      Container(
                        width: 120,
                        height: 1,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 40.w,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 238, 238, 238)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/google.png',
                              height: 24,
                              width: 24,
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              'Google',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40.w,
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle button press
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 238, 238, 238)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/facebook.png',
                              height: 24,
                              width: 24,
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              'Facebook',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("New to RiderOP?"),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignupPage()));
                        },
                        child: const Text(
                          "SignUp",
                          style: TextStyle(
                              color: Color.fromARGB(255, 70, 17, 155),
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
