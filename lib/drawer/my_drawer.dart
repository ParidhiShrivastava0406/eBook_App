import 'package:flutter/material.dart';
import 'drawer_items/createStories.dart';
import 'drawer_items/events_page.dart';
import 'drawer_items/feedback_page.dart';
import 'drawer_items/friends_page.dart';
import 'drawer_items/notifications_page.dart';
import 'drawer_items/privacy_policy_page.dart';
import 'drawer_items/settings_page.dart';

class MyDrawerList extends StatefulWidget {
  @override
  State<MyDrawerList> createState() => _MyDrawerListState();
}

class _MyDrawerListState extends State<MyDrawerList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.assignment,
              size: 20,
              color: Colors.black45,
            ),
            title: Text(
              'Create story',
              style: TextStyle(
                color: Colors.black45,
                fontSize: 16,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CreateStories(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.people_alt_outlined,
              size: 20,
              color: Colors.black45,
            ),
            title: Text(
              'Friends',
              style: TextStyle(
                color: Colors.black45,
                fontSize: 16,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FriendsPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.event,
              size: 20,
              color: Colors.black45,
            ),
            title: Text(
              'Events',
              style: TextStyle(
                color: Colors.black45,
                fontSize: 16,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EventsPage(),
                ),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.settings_outlined,
              size: 20,
              color: Colors.black45,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                color: Colors.black45,
                fontSize: 16,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.notifications_outlined,
              size: 20,
              color: Colors.black45,
            ),
            title: Text(
              'Notifications',
              style: TextStyle(
                color: Colors.black45,
                fontSize: 16,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationsPage(),
                ),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.privacy_tip_outlined,
              size: 20,
              color: Colors.black45,
            ),
            title: Text(
              'Privacy policy',
              style: TextStyle(
                color: Colors.black45,
                fontSize: 16,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PrivacyPolicyPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.feedback_outlined,
              size: 20,
              color: Colors.black45,
            ),
            title: Text(
              'Send feedback',
              style: TextStyle(
                color: Colors.black45,
                fontSize: 16,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FeedbackPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

//
