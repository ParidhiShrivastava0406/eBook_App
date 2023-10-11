import 'package:flutter/material.dart';
import '../authentication/signup_screen.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SignupScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage('assets/images/logo.png'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'WordsWorth',
                style: TextStyle(
                  color: Colors.orange[800],
                  fontSize: 33,
                  fontFamily: 'Raleway',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
