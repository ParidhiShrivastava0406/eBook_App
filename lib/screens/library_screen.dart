import 'package:ebook_app/screens/readMore.dart';
import 'package:flutter/material.dart';
import 'package:ebook_app/screens/searchPage.dart';
import 'package:ebook_app/drawer/my_drawer.dart';
import 'package:ebook_app/drawer/my_drawer_header.dart';
import '../drawer/drawer_items/notifications_page.dart';
import '../drawer/drawer_items/createStories.dart';
import '../pdf/storyDescriptionPage.dart';

class Library extends StatefulWidget {
  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
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
        title: Text(
          'Your Books',
          style: TextStyle(
            fontFamily: 'Raleway',
          ),
        ),
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
      body: Container(
        color: Colors.black87,
        width: 600,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DescriptivePage(),
                          ),
                        );
                      },
                      child: Image(
                        image: AssetImage('assets/images/1.jpg'),
                        height: 200,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DescriptivePage(),
                          ),
                        );
                      },
                      child: Image(
                        image: AssetImage('assets/images/2.jpg'),
                        height: 200,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DescriptivePage(),
                          ),
                        );
                      },
                      child: Image(
                        image: AssetImage('assets/images/3.jpg'),
                        height: 200,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DescriptivePage(),
                          ),
                        );
                      },
                      child: Image(
                        image: AssetImage('assets/images/4.jpg'),
                        height: 200,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DescriptivePage(),
                          ),
                        );
                      },
                      child: Image(
                        image: AssetImage('assets/images/5.jpg'),
                        height: 200,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DescriptivePage(),
                          ),
                        );
                      },
                      child: Image(
                        image: AssetImage('assets/images/6.jpg'),
                        height: 200,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DescriptivePage(),
                          ),
                        );
                      },
                      child: Image(
                        image: AssetImage('assets/images/7.jpg'),
                        height: 200,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DescriptivePage(),
                          ),
                        );
                      },
                      child: Image(
                        image: AssetImage('assets/images/8.jpg'),
                        height: 200,
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white10,
                    radius: 3,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey[800],
                    radius: 4.5,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white10,
                    radius: 3,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.white70,
                thickness: 0.1,
                indent: 40,
                endIndent: 40,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Pending books',
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 20,
                  fontFamily: 'Raleway',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReadMore(),
                          ),
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        margin: EdgeInsets.only(left: 25, top: 15, bottom: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[800],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height: 100,
                              width: 100,
                              image: AssetImage('assets/images/5.jpg'),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'A Promised Land',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal[200],
                              ),
                            ),
                            Text(
                              'by Barack Obama',
                              style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Brasil',
                                color: Colors.yellow[800],
                              ),
                            ),
                            Text(
                              '30% Remaining',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.white38,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReadMore(),
                          ),
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        margin: EdgeInsets.only(bottom: 15, top: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[800],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height: 100,
                              width: 100,
                              image: AssetImage('assets/images/6.jpg'),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'The Silent Patient',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal[200],
                              ),
                            ),
                            Text(
                              'by Alex Michaelides',
                              style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Brasil',
                                color: Colors.yellow[800],
                              ),
                            ),
                            Text(
                              '5% Remaining',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.white38,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReadMore(),
                          ),
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        margin: EdgeInsets.only(bottom: 15, top: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[800],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height: 100,
                              width: 100,
                              image: AssetImage('assets/images/7.jpg'),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Shuggie Bain',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal[200],
                              ),
                            ),
                            Text(
                              'by Douglas Stuart',
                              style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Brasil',
                                color: Colors.yellow[800],
                              ),
                            ),
                            Text(
                              '80% Remaining',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.white38,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReadMore(),
                          ),
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        margin: EdgeInsets.only(bottom: 15, top: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[800],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height: 100,
                              width: 100,
                              image: AssetImage('assets/images/8.jpg'),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'The Gita for Children',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal[200],
                              ),
                            ),
                            Text(
                              'by Roopa Pai',
                              style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Brasil',
                                color: Colors.yellow[800],
                              ),
                            ),
                            Text(
                              '50% Remaining',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.white38,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                color: Colors.white70,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Completed books',
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 20,
                  fontFamily: 'Raleway',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DescriptivePage(),
                          ),
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        margin: EdgeInsets.only(left: 25, top: 15, bottom: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[800],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height: 100,
                              width: 100,
                              image: AssetImage('assets/images/1.jpg'),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'The Violet and the Tom',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal[200],
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'by Eve Ocotillo',
                              style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Brasil',
                                color: Colors.yellow[800],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DescriptivePage(),
                          ),
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        margin: EdgeInsets.only(bottom: 15, top: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[800],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height: 100,
                              width: 100,
                              image: AssetImage('assets/images/2.jpg'),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'The Student Prince',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal[200],
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'by FayJay',
                              style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Brasil',
                                color: Colors.yellow[800],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DescriptivePage(),
                          ),
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        margin: EdgeInsets.only(bottom: 15, top: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[800],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height: 100,
                              width: 100,
                              image: AssetImage('assets/images/3.jpg'),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Heart in Hand',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal[200],
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'by salifiable',
                              style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Brasil',
                                color: Colors.yellow[800],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DescriptivePage(),
                          ),
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        margin: EdgeInsets.only(bottom: 15, top: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[800],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height: 100,
                              width: 100,
                              image: AssetImage('assets/images/4.jpg'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Like a Sparrow \n through the Heart',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal[200],
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'by Aggy Bird',
                              style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Brasil',
                                color: Colors.yellow[800],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                color: Colors.white70,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Your Stories',
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 20,
                  fontFamily: 'Raleway',
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Create Your own Story',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4,
                  color: Colors.yellow[800],
                  fontSize: 10,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateStories()));
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.black38,
                      radius: 50,
                      child: Icon(
                        Icons.add,
                        size: 40,
                        color: Colors.yellow[800],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black26,
                    radius: 50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black26,
                    radius: 50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
