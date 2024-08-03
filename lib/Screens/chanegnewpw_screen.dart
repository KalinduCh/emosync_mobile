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
      home: CreateNewPasswordScreen(),
    );
  }
}

class CreateNewPasswordScreen extends StatefulWidget {
  @override
  _CreateNewPasswordScreenState createState() => _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  void _toggleConfirmPasswordVisibility() {
    setState(() {
      _obscureConfirmPassword = !_obscureConfirmPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Password'),
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
              'Your new password must be different from the previous password.',
              style: TextStyle(
                fontSize: 18.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            TextField(
              obscureText: _obscurePassword,
              decoration: InputDecoration(
                labelText: 'New Password',
                hintText: 'Enter your new password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    _togglePasswordVisibility();
                  },
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              obscureText: _obscureConfirmPassword,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                hintText: 'Confirm your new password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureConfirmPassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    _toggleConfirmPasswordVisibility();
                  },
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle change password button press
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.orange,
                padding: EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text(
                'Change Password',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
