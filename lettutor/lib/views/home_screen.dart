import 'package:flutter/material.dart';
import 'package:lettutor/views/pages/courses_page.dart';
import 'package:lettutor/views/pages/home_page.dart';
import 'package:lettutor/views/pages/message_page.dart';
import 'package:lettutor/views/pages/settings_page.dart';
import 'package:lettutor/views/pages/tutor_page.dart';
import 'package:lettutor/views/pages/upcoming_page.dart';
import 'package:lettutor/views/profile_screen.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int _currentIndex = 0;
  final appbarTitles = [
    'Home',
    'Courses',
    'Upcoming',
    'Tutors',
    'Settings',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          homePage(),
          coursesPage(),
          upcomingPage(),
          tutorPage(),
          settingsPage(),
        ],
      ),
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.person, color: Colors.grey),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => profileScreen(),
                ),
              );
            },
          ),
          SizedBox(
            width: 20,
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          appbarTitles[_currentIndex],
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          backgroundColor: Colors.white,
          showUnselectedLabels: false,
          onTap: (index) => setState(() => _currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: appbarTitles[_currentIndex],
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: appbarTitles[_currentIndex],
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_time),
              label: appbarTitles[_currentIndex],
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.groups),
              label: appbarTitles[_currentIndex],
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: appbarTitles[_currentIndex],
            ),
          ]),
    );
  }
}
