import 'package:flutter/material.dart';


class LeaderboardPage extends StatelessWidget {
  final List<Map<String, dynamic>> leaderboard = [
    {'name': 'Aarav Mehta', 'donations': 7000},
    {'name': 'Riya Kapoor', 'donations': 6500},
    {'name': 'Rishi Kesh', 'donations': 5000},
    {'name': 'Neha Sharma', 'donations': 4000},
    {'name': 'Kunal Verma', 'donations': 3500},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Leaderboard')),
      body: ListView.builder(
        itemCount: leaderboard.length,
        itemBuilder: (context, index) {
          final user = leaderboard[index];
          return ListTile(
            leading: CircleAvatar(child: Text('#${index + 1}')),
            title: Text(user['name']),
            trailing: Text('₹${user['donations']}'),
          );
        },
      ),
    );
  }
}