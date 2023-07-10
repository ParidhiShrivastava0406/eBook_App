import 'package:ebook_app/bottomNavBar.dart';
import 'package:flutter/material.dart';

import 'package:rflutter_alert/rflutter_alert.dart';

class BuyPremium extends StatefulWidget {
  @override
  State<BuyPremium> createState() => _BuyPremiumState();
}

class _BuyPremiumState extends State<BuyPremium> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal[700],
        iconTheme: IconThemeData(
          color: Colors.white60,
          size: 27,
        ),
        toolbarHeight: 65,
        title: Text(
          'Premium Subscription',
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
      body: Container(
        color: Colors.black87,
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(30),
              ),
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.symmetric(
                vertical: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Basic Plan',
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 22,
                          fontFamily: 'Raleway',
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Monthly Subscription',
                        style: TextStyle(
                          color: Colors.white24,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Image(
                    image: AssetImage('assets/images/book2.png'),
                    height: 100,
                    width: 100,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.only(left: 70),
              child: Row(
                children: [
                  Icon(
                    Icons.workspace_premium_sharp,
                    size: 40,
                    color: Colors.yellow[700],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Premium Features',
                        style: TextStyle(
                            color: Colors.orange[500],
                            fontFamily: 'Raleway',
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'free 60-days trial',
                        style: TextStyle(
                          color: Colors.white38,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.notifications_active,
                      size: 25,
                      color: Colors.white70,
                    ),
                    title: Text(
                      'Custom Reminder',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Raleway',
                        color: Colors.white60,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.monetization_on,
                      size: 25,
                      color: Colors.white70,
                    ),
                    title: Text(
                      'Financial Check-up',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Raleway',
                        color: Colors.white60,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.bar_chart_outlined,
                      size: 25,
                      color: Colors.white70,
                    ),
                    title: Text(
                      'Investment Care',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Raleway',
                        color: Colors.white60,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FirstScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 3.0,
                          spreadRadius: 0.0,
                          offset: Offset(1.0, 1.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.teal[500],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Not now',
                          style: TextStyle(
                              color: Colors.white60, fontFamily: 'Raleway'),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Alert(
                        context: context,
                        title: 'Congratutions!',
                        desc: 'You are now a Premium User.',
                        buttons: [
                          DialogButton(
                            color: Colors.black87,
                            child: Text(
                              "THANKS",
                              style: TextStyle(
                                color: Colors.orange[400],
                                fontSize: 20,
                                fontFamily: 'Raleway',
                              ),
                            ),
                            onPressed: () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FirstScreen(),
                              ),
                            ),
                            width: 120,
                          )
                        ],
                      ).show();
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 3.0,
                          spreadRadius: 0.0,
                          offset: Offset(1.0, 1.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.teal[500],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Buy Premium',
                          style: TextStyle(
                              color: Colors.white60, fontFamily: 'Raleway'),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Text(
                          'Just for Rs. 339',
                          style: TextStyle(
                              color: Colors.white38,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
