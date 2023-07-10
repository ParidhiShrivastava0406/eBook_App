import 'package:flutter/material.dart';
import 'package:ebook_app/screens/storyDescriptionPage.dart';
import 'library_screen.dart';
import 'package:ebook_app/screens/searchPage.dart';
import 'package:ebook_app/drawer_items/notifications_page.dart';
import 'package:ebook_app/my_drawer.dart';
import 'package:ebook_app/my_drawer_header.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
          'Your Profile',
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
      body: Column(
        children: [
          Container(
            color: Colors.black87,
            height: 250,
            width: 900,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Paridhi Shrivastava',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.orange[700],
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Non-Premium User',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.white38,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              '172',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Rank',
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                color: Colors.black38,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        VerticalDivider(
                          width: 40,
                          color: Colors.black38,
                        ),
                        Column(
                          children: [
                            Text(
                              '452',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Followers',
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                color: Colors.black38,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        VerticalDivider(
                          width: 30,
                          color: Colors.black38,
                        ),
                        Column(
                          children: [
                            Text(
                              '8',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Following',
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                color: Colors.black38,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                    child: Column(
                      children: [
                        Text(
                          'About',
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            color: Colors.teal[600],
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'I am a person who is positive about every aspect of life. There are many things I like to do, to see, and to experience. I like to read, I like to write; I like to think, I like to dream; I like to talk, I like to listen.',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[500],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Completed Books',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Raleway',
                      color: Colors.deepOrange[700],
                    ),
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
                            margin:
                                EdgeInsets.only(left: 25, top: 15, bottom: 15),
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
                                  height: 5,
                                ),
                                Text(
                                  'by Eve Ocotillo',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Signature',
                                    color: Colors.yellow[800],
                                    fontWeight: FontWeight.w600,
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
                                  height: 5,
                                ),
                                Text(
                                  'by FayJay',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Signature',
                                    color: Colors.yellow[800],
                                    fontWeight: FontWeight.w600,
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
                                  height: 5,
                                ),
                                Text(
                                  'by salifiable',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Signature',
                                    fontWeight: FontWeight.w600,
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
                                  height: 5,
                                ),
                                Text(
                                  'by Aggy Bird',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Signature',
                                    fontWeight: FontWeight.w600,
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
                                builder: (context) => Library(),
                              ),
                            );
                          },
                          child: Container(
                            height: 200,
                            width: 200,
                            margin:
                                EdgeInsets.only(bottom: 15, top: 15, right: 25),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey[800],
                            ),
                            child: Center(
                              child: Text(
                                'See \n more ...',
                                style: TextStyle(
                                  color: Colors.yellow[700],
                                  fontSize: 18,
                                  fontFamily: 'Raleway',
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
