import 'package:flutter/material.dart';

import 'home_page/home_page.dart';
import 'fixture_page.dart';
import 'match_page.dart';
import 'news_page.dart';
import 'more_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with SingleTickerProviderStateMixin {
  late TabController controller;
  int indexSelected = 0;

  onBarItemClicked(int i) {
    setState(() {
      indexSelected = i;
      controller.index = indexSelected;
    });
  }

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 5, vsync: this); // Increase the length to 5
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff15212D),
        toolbarHeight: 60.0,
        title: Image.asset(
          'assets/t_score.png',
          height: 40, // Adjust the height as needed
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Image.asset(
              'assets/premium_per_user.png',
              width: 20,
              height: 20,
            ),
          ),
        ],
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: [
          HomePage(),
          FixturePage(),
          MatchPage(),
          NewsPage(),
          MorePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          _buildNavItem(Icons.home, "Home", 0),
          _buildNavItem(Icons.content_paste_sharp, "Fixture", 1),
          _buildNavItem(Icons.sports_cricket_outlined, "Match", 2),
          _buildNavItem(Icons.calendar_today_outlined, "News", 3),
          _buildNavItem(Icons.menu_outlined, "More", 4), // Update to index 4
        ],
        elevation: 0,
        currentIndex: indexSelected,
        backgroundColor: Color(0xff15212D),
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        showSelectedLabels: true,
        selectedLabelStyle: TextStyle(fontSize: 12),
        type: BottomNavigationBarType.fixed,
        onTap: onBarItemClicked,
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Container(
        decoration: BoxDecoration(
          color: indexSelected == index ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: indexSelected == index ? 14 : 20, // Adjust the icon size as needed
            ),
            if (indexSelected == index) SizedBox(width: 4),
            if (indexSelected == index)
              Text(
                label,
                style: TextStyle(fontSize: 11), // Adjust the text size as needed
              ),
          ],
        ),
      ),
      label: "",
    );
  }
}
