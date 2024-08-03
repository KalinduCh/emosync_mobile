import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EmoSync',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
      ),
      home: VerifyEmailScreen(),
    );
  }
}

class VerifyEmailScreen extends StatefulWidget {
  @override
  _VerifyEmailScreenState createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  int _remainingSeconds = 30;
  bool _canResend = false;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_remainingSeconds > 0) {
        setState(() {
          _remainingSeconds--;
        });
      } else {
        setState(() {
          _canResend = true;
        });
        _timer.cancel();
      }
    });
  }

  void _resendCode() {
    setState(() {
      _remainingSeconds = 30;
      _canResend = false;
      _startTimer();
      // Simulate code resend logic here
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verify Email'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Please enter the four digit code sent to your email address.',
              style: TextStyle(
                fontSize: 18.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildCodeInputField(),
                SizedBox(width: 8.0),
                _buildCodeInputField(),
                SizedBox(width: 8.0),
                _buildCodeInputField(),
                SizedBox(width: 8.0),
                _buildCodeInputField(),
              ],
            ),
            SizedBox(height: 16.0),
            _canResend
                ? TextButton(
                    onPressed: () {
                      _resendCode();
                    },
                    child: Text(
                      'Don\'t receive code? Re-send',
                      style: TextStyle(color: Colors.orange),
                    ),
                  )
                : Text(
                    'Resend code in $_remainingSeconds seconds',
                    style: TextStyle(color: Colors.orange),
                    textAlign: TextAlign.center,
                  ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle verify button press
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.orange,
                padding: EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text(
                'Verify',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCodeInputField() {
    return Container(
      width: 50.0,
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          counterText: '',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
