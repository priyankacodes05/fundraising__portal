import 'package:flutter/material.dart';
import 'leaderboard_page.dart';
import 'announcements_page.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    DashboardContent(),
    LeaderboardPage(),
    AnnouncementsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: Colors.indigo,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard),
            label: "Leaderboard",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.announcement),
            label: "Announcements",
          ),
        ],
      ),
    );
  }
}

class DashboardContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Intern Dashboard")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome, Priyanka Rani 👋",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("Referral Code: priyanka2025"),
            SizedBox(height: 10),
            Card(
              color: Colors.indigo.shade50,
              child: ListTile(
                title: Text("Total Donations Raised"),
                subtitle: Text("₹ 5,000",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(height: 20),
            Text("Rewards & Unlockables",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RewardCard(icon: Icons.star, text: "Bronze Badge"),
                RewardCard(icon: Icons.emoji_events, text: "Top Donor"),
                RewardCard(icon: Icons.card_giftcard, text: "Gift Voucher"),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class RewardCard extends StatelessWidget {
  final IconData icon;
  final String text;

  RewardCard({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.indigo,
          child: Icon(icon, color: Colors.white, size: 30),
        ),
        SizedBox(height: 5),
        Text(text),
      ],
    );
  }
}
