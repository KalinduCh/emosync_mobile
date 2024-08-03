import 'package:flutter/material.dart';

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
      home: ForgotPasswordScreen(),
    );
  }
}

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
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
              'Please enter your email address to receive a verification code.',
              style: TextStyle(
                fontSize: 18.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email Address',
                hintText: 'Enter your email address',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle send button press
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.orange,
                padding: EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text(
                'Send',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
