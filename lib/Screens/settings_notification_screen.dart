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
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.grey[900], // Dark background color
      ),
      home: NotificationsScreen(),
    );
  }
}

class NotificationsScreen extends StatefulWidget {
  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  bool _newMessagesEnabled = true;
  bool _newUpdatesEnabled = false;
  bool _newSuggestionsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 16.0),
            Text(
              'EmoSync Notifications',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12.0),
            _buildNotificationSetting(
              title: 'New Messages',
              value: _newMessagesEnabled,
              onChanged: (value) {
                setState(() {
                  _newMessagesEnabled = value;
                });
              },
            ),
            _buildNotificationSetting(
              title: 'New Updates',
              value: _newUpdatesEnabled,
              onChanged: (value) {
                setState(() {
                  _newUpdatesEnabled = value;
                });
              },
            ),
            SizedBox(height: 24.0),
            Divider(thickness: 1.0, color: Colors.grey),
            SizedBox(height: 24.0),
            Text(
              'Media Notifications',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12.0),
            _buildNotificationSetting(
              title: 'Allow New Suggestions',
              value: _newSuggestionsEnabled,
              onChanged: (value) {
                setState(() {
                  _newSuggestionsEnabled = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationSetting({
    required String title,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return SwitchListTile(
      contentPadding: EdgeInsets.all(0),
      title: Text(
        title,
        style: TextStyle(fontSize: 18.0),
      ),
      value: value,
      activeColor: Colors.orange, // Set the active color directly here
      onChanged: onChanged,
    );
  }
}
