import 'package:flutter/material.dart';

class LeaderboardPage extends StatelessWidget {
  final List<Map<String, dynamic>> leaderboard = [
    {"name": "Aditi", "donations": 7500},
    {"name": "Priyanka", "donations": 5000},
    {"name": "Rohit", "donations": 4000},
    {"name": "Neha", "donations": 3500},
    {"name": "Aman", "donations": 2000},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Leaderboard")),
      body: ListView.builder(
        itemCount: leaderboard.length,
        itemBuilder: (context, index) {
          final intern = leaderboard[index];
          return ListTile(
            leading: CircleAvatar(child: Text("${index + 1}")),
            title: Text(intern["name"]),
            trailing: Text("₹ ${intern["donations"]}"),
          );
        },
      ),
    );
  }
}
