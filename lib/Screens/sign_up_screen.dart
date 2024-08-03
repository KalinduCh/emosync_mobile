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
      home: SignUpScreen(),
    );
  }
}

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var styleFrom = ElevatedButton.styleFrom(
                  foregroundColor: Colors.black, backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                );
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Create your account',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Unlock a world of personalized media recommendations and emotional support.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 24.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Enter your username',
                  border: OutlineInputBorder(),
                ),
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
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: true,
                    onChanged: (bool? value) {
                      // Handle checkbox state change
                    },
                  ),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: 'By continuing you agree to the EmoSync '),
                          TextSpan(
                            text: 'Term of Service',
                            style: TextStyle(color: Colors.orange),
                          ),
                          TextSpan(text: ' and '),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(color: Colors.orange),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Handle continue button press
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.orange,
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Continue',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: TextButton(
                  onPressed: () {
                    // Handle log in button press
                  },
                  child: Text(
                    'Already have an account? Log In',
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
              ),
              Divider(thickness: 1.0, color: Colors.grey),
              SizedBox(height: 8.0),
              ElevatedButton.icon(
                onPressed: () {
                  // Handle continue with Google button press
                },
                style: styleFrom,
                icon: Image.asset('lib/assets/google.png', height: 24.0),
                label: Text(
                  'Continue with Google',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}