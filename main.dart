import 'package:flutter/material.dart';
import 'screens/login_page.dart';
import 'screens/dashboard_page.dart';
import 'screens/leaderboard_page.dart';
import 'screens/announcements_page.dart';

void main() {
  runApp(FundraisingApp());
}

class FundraisingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fundraising Intern Portal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: 'Roboto',
      ),
      home: LoginPage(),
    );
  }
}
