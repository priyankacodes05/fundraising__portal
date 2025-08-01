import 'package:flutter/material.dart';

class AnnouncementsPage extends StatelessWidget {
  final List<String> announcements = [
    "🎉 Welcome to the Fundraising Portal!",
    "🚀 Top 3 interns will receive rewards.",
    "📅 Deadline for Round 1: 5th Aug 2025",
    "🏆 Keep raising donations and unlock badges!"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Announcements")),
      body: ListView.builder(
        itemCount: announcements.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(announcements[index],
                  style: TextStyle(fontSize: 16)),
            ),
          );
        },
      ),
    );
  }
}
