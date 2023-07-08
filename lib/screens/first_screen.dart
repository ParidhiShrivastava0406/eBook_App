import 'package:ebook_app/drawer_items/notifications_page.dart';
import 'package:flutter/material.dart';
import '../bottomNavBar/library_screen.dart';
import '../bottomNavBar/profile_screen.dart';
import '../bottomNavBar/home_screen.dart';
import '../my_drawer_header.dart';
import '../my_drawer.dart';
import 'package:ebook_app/searchPage.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _currentIndex = 0;

  List<Widget> _topTitle = <Widget>[
    Text(
      'e-book Reader',
      style: TextStyle(
        fontFamily: 'Raleway',
      ),
    ),
    Text(
      'Your Books',
      style: TextStyle(
        fontFamily: 'Raleway',
      ),
    ),
    Text(
      'Your Profile',
      style: TextStyle(
        fontFamily: 'Raleway',
      ),
    ),
  ];
  List<Widget> _navScreen = <Widget>[
    HomeScreen(),
    Library(),
    Profile(),
  ];

  void _navTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal[700],
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchPage(),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationsPage(),
                ),
              );
            },
          ),
          SizedBox(
            width: 3,
          ),
        ],
        iconTheme: IconThemeData(
          color: Colors.white60,
          size: 27,
        ),
        toolbarHeight: 65,
        title: _topTitle.elementAt(_currentIndex),
        titleTextStyle: TextStyle(
          color: Colors.white60,
          fontWeight: FontWeight.w600,
          fontSize: 23,
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
      body: Container(child: _navScreen.elementAt(_currentIndex)),
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          iconSize: 27,
          backgroundColor: Colors.teal[700],
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.white70,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.collections_bookmark_rounded),
              label: 'Library',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          onTap: _navTap,
        ),
      ),
    );
  }
}
