import 'package:flutter/material.dart';

class AnnouncementsPage extends StatelessWidget {
  final List<String> announcements = [
    '🎉 Top 3 interns will receive special gifts!',
    '📌 New reward tier unlocked at ₹10,000 donations.',
    '📅 Next review meeting on Monday at 5 PM.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Announcements')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: announcements.map((msg) => ListTile(title: Text(msg))).toList(),
        ),
      ),
    );
  }
}

