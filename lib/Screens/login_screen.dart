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
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Welcome back to EmoSync 👋',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8.0),
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
                          TextSpan(text: 'By logging in you agree to the EmoSync '),
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
                  // Handle login button press
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.orange,
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: TextButton(
                  onPressed: () {
                    // Handle forgot password button press
                  },
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Divider(thickness: 1.0, color: Colors.grey),
              SizedBox(height: 8.0),
              ElevatedButton.icon(
                onPressed: () {
                  // Handle continue with Google button press
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black, backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                icon: Image.asset('lib/assets/google.png', height: 24.0),
                label: Expanded(
                  child: Text(
                    'Continue with Google',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: TextButton(
                  onPressed: () {
                    // Handle create account button press
                  },
                  child: Text(
                    'Don\'t have an account? Sign Up',
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
