import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ebook_app/firebaseDatabase/addBook.dart';
import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
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
          'WishBooks',
          style: TextStyle(
            fontFamily: 'Raleway',
          ),
        ),
        titleTextStyle: TextStyle(
          color: Colors.white60,
          fontWeight: FontWeight.w600,
          fontSize: 23,
        ),
        actions: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context, builder: (context) => AddRead());
              },
              icon: Icon(Icons.add)),
          SizedBox(
            width: 5,
          )
        ],
      ),
      body: Container(
        color: Colors.black87,
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Add your favourite books here',
            style: TextStyle(
                fontSize: 20, fontFamily: 'Raleway', color: Colors.white38),
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            color: Colors.white70,
            thickness: 0.1,
            indent: 40,
            endIndent: 40,
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: StreamBuilder<List<User>>(
              stream: readUsers(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text('Something went wrong! ${snapshot.error}');
                } else if (snapshot.hasData) {
                  final users = snapshot.data!;
                  return ListView(
                    children: users.map(buildUser).toList(),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),
        ]),
      ),
    );
  }

  Widget buildUser(User user) => ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.black26,
          child: Text(
            '${user.Year}',
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),
          ),
        ),
        title: Text(user.Title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            )),
        subtitle: Text(
          user.Name,
          style: TextStyle(
            color: Colors.white60,
            fontFamily: 'Raleway',
          ),
        ),
      );

  Stream<List<User>> readUsers() => FirebaseFirestore.instance
      .collection('ebook')
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) => User.fromJson(doc.data())).toList());
}

class User {
  String? id;
  final String Title;
  final int? Year;
  final String Name;

  User({
    this.id = '',
    required this.Title,
    required this.Year,
    required this.Name,
  });

  static User fromJson(Map<String, dynamic> json) => User(
      id: json['id'],
      Title: json['Title'],
      Name: json['Name'],
      Year: json['Year']);
}
