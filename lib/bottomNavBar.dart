import 'package:ebook_app/firebaseDatabase/addBook.dart';
import 'package:ebook_app/firebaseDatabase/wishBooks.dart';
import 'package:flutter/material.dart';
import 'screens/library_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/home_screen.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _currentIndex = 0;

  List<Widget> _navScreen = <Widget>[
    HomeScreen(),
    Library(),
    Favourites(),
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
      body: Container(child: _navScreen.elementAt(_currentIndex)),
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          iconSize: 27,
          backgroundColor: Colors.teal[700],
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.white60,
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
              icon: Icon(Icons.menu_book_rounded),
              label: 'BookList',
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
