import 'package:flutter/material.dart';
import 'package:intern1/pages/anouncement_page.dart';
import 'package:intern1/pages/leaderboard_page.dart';
import 'package:intern1/pages/login_page.dart'; // Import your login page

class DashboardPage extends StatelessWidget {
  final List<String> rewards = ['T-Shirt', 'Certificate', 'Shout-out', 'Goodies'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Welcome',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.leaderboard),
              title: Text('Leaderboard'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => LeaderboardPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.announcement),
              title: Text('Announcements'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => AnnouncementsPage()),
                );
              },
            ),
            Spacer(),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.red),
              title: Text('Logout', style: TextStyle(color: Colors.red)),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => LoginPage()),
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Intern: Rishi Kesh', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Referral Code: rishikesh2025', style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            Text('Total Donations Raised:', style: TextStyle(fontSize: 18)),
            Text('₹5,000', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.green)),
            SizedBox(height: 30),
            Text('Rewards/Unlockables', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            SizedBox(height: 10),
            Wrap(
              spacing: 10,
              children: rewards
                  .map((reward) => Chip(label: Text(reward)))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
