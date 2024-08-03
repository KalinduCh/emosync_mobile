// screens/splash_screen.dart

import 'package:flutter/material.dart';
import 'dart:async';
import './sign_up_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SignUpScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.black),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('lib/assets/12.png',
                height: 300.0,
                width: 300.0,
              ),
              SizedBox(height: 20.0),
              Text(
                "How may I help you today!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the next screen or perform any action
                },
                child: Text('Get Started!'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.orange, // Text color
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
