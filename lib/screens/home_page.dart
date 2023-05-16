import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _obscureText = true;
  bool rememberMe = false;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/logo_bg.png",
                ),
                SizedBox(
                  height: 3.h,
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
                  height: 4.h,
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
                        // Update the state of "rememberMe" when the checkbox value changes
                        rememberMe = value!;
                      },
                    ),
                    const Text('Remember Me'),
                    SizedBox(
                      width: 17.w,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        height: 6.h,
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 97, 42, 169))),
                          onPressed: () {},
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
                  height: 3.h,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 1,
                        color: Colors.black,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Or With',
                        ),
                      ),
                      Container(
                        width: 100,
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
                        onPressed: () {
                          // Handle button press
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/google.png', // Replace with the path to your Google logo image
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
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/facebook.png', // Replace with the path to your Google logo image
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
                Row(
                  children: [
                    Text("Dont have an account?"),
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
