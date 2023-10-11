import 'package:ebook_app/bottomNavBar.dart';
import 'package:flutter/material.dart';
import '../drawer/drawer_items/feedback_page.dart';
import 'buyPremium_screen.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class PremiumDescriptive extends StatefulWidget {
  @override
  State<PremiumDescriptive> createState() => _PremiumDescriptiveState();
}

class _PremiumDescriptiveState extends State<PremiumDescriptive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Premium',
          style: TextStyle(
            fontFamily: 'Raleway',
          ),
        ),
        titleTextStyle: TextStyle(
          color: Colors.white60,
          fontWeight: FontWeight.w600,
          fontSize: 23,
        ),
        centerTitle: true,
        backgroundColor: Colors.teal[700],
        toolbarHeight: 65,
        iconTheme: IconThemeData(
          color: Colors.white60,
          size: 27,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.black87,
            width: double.infinity,
            height: 300,
            child: Image.asset('assets/images/5.jpg'),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Text(
                    'A Promised Land',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 25,
                      fontFamily: 'Raleway',
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'by Barack Obama',
                    style: TextStyle(
                      color: Colors.yellow[700],
                      fontSize: 36,
                      fontFamily: 'Brasil',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Ratings',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black45,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FeedbackPage(),
                                ),
                              );
                            },
                            child: Text(
                              'Give Feedback',
                              style: TextStyle(
                                color: Colors.deepOrange[300],
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 120),
                      Icon(
                        Icons.star,
                        color: Colors.yellow[500],
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow[500],
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow[500],
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow[500],
                      ),
                      Icon(
                        Icons.star_half_outlined,
                        color: Colors.yellow[500],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
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
                          "A Promised Land is extraordinarily intimate and introspective-the story of one man's bet with history, the faith of a community organizer tested on the world stage. Obama is candid about the balancing act of running for office as a Black American, bearing the expectations of a generation buoyed by messages of 'hope and change,' and meeting the moral challenges of high-stakes decision-making. He is frank about the forces that opposed him at home and abroad, open about how living in the White House affected his wife and daughters, and unafraid to reveal self-doubt and disappointment. Yet he never wavers from his belief that inside the great, ongoing American experiment, progress is always possible.",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[500],
                          ),
                        )
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BuyPremium(),
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white60,
                                blurRadius: 3.0,
                                spreadRadius: 0.0,
                                offset: Offset(1.0, 1.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.teal[500],
                          ),
                          child: Center(
                            child: Text(
                              'Buy Premium',
                              style: TextStyle(
                                  color: Colors.white60, fontFamily: 'Raleway'),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 30),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Alert(
                              context: context,
                              title: 'Congratutions!',
                              desc: 'The Book has been added to the cart.',
                              buttons: [
                                DialogButton(
                                  color: Colors.black87,
                                  child: Text(
                                    "YAY!",
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
                                color: Colors.white60,
                                blurRadius: 3.0,
                                spreadRadius: 0.0,
                                offset: Offset(1.0, 1.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.teal[500],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Add to Cart',
                                    style: TextStyle(
                                      color: Colors.white60,
                                      fontFamily: 'Raleway',
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    'Rs. 665',
                                    style: TextStyle(
                                        color: Colors.white38,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.add_shopping_cart,
                                color: Colors.yellow[600],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
