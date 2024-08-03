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
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
      ),
      home: UserProfileScreen(),
    );
  }
}

class UserProfileScreen extends StatelessWidget {
  final String name = 'John Doe';
  final String email = 'johndoe@example.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Navigate to settings screen
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              elevation: 2.0,
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                title: Text(
                  name,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  email,
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView(
                children: [
                  _buildSettingsItem(
                    context,
                    title: 'Account Management',
                    icon: Icons.account_circle,
                    onTap: () {
                      // Handle account management tap
                    },
                  ),
                  _buildSettingsItem(
                    context,
                    title: 'Notifications',
                    icon: Icons.notifications,
                    onTap: () {
                      // Handle notifications tap
                    },
                  ),
                  _buildSettingsItem(
                    context,
                    title: 'Media Preferences',
                    icon: Icons.tv,
                    onTap: () {
                      // Handle media preferences tap
                    },
                  ),
                  _buildSettingsItem(
                    context,
                    title: 'Privacy and Security',
                    icon: Icons.security,
                    onTap: () {
                      // Handle privacy and security tap
                    },
                  ),
                  _buildSettingsItem(
                    context,
                    title: 'Application Settings',
                    icon: Icons.settings_applications,
                    onTap: () {
                      // Handle application settings tap
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle logout button press
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.orange,
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text(
                'Logout',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsItem(BuildContext context,
      {required String title, required IconData icon, required VoidCallback onTap}) {
    return Card(
      elevation: 2.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Icon(icon, color: Colors.orange),
        title: Text(title),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}
