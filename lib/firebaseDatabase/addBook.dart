import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddRead extends StatefulWidget {
  const AddRead({Key? key}) : super(key: key);

  @override
  State<AddRead> createState() => _AddReadState();
}

class _AddReadState extends State<AddRead> {
  final _controllerTitle = TextEditingController();
  final _controllerName = TextEditingController();
  final _controllerYear = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      color: Colors.grey[800],
      child: ListView(
        children: [
          TextField(
            controller: _controllerTitle,
            cursorColor: Colors.teal[700],
            decoration: InputDecoration(
              hintText: 'Book Title',
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.black87),
                  borderRadius: BorderRadius.circular(10)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.teal.shade700),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: _controllerName,
            cursorColor: Colors.teal[700],
            decoration: InputDecoration(
              hintText: 'Author',
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.black87),
                  borderRadius: BorderRadius.circular(10)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.teal.shade700),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: _controllerYear,
            cursorColor: Colors.teal[700],
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: "Published on Year('yyyy')",
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.black87),
                  borderRadius: BorderRadius.circular(10)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.teal.shade700),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                final user = User(
                    Title: _controllerTitle.text,
                    Name: _controllerName.text,
                    Year: int.parse(_controllerYear.text));
                createUser(user);
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 3.0,
                      spreadRadius: 0.0,
                      offset: Offset(1.0, 1.0),
                    )
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.teal[700],
                ),
                child: Center(
                  child: Text(
                    'Add to favourites',
                    style:
                        TextStyle(color: Colors.white60, fontFamily: 'Raleway'),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Future createUser(User user) async {
    final docUser = FirebaseFirestore.instance.collection('ebook').doc();
    user.id = docUser.id;
    final json = user.toJson();
    await docUser.set(json);
  }
}

class User {
  String? id;
  final String Title;
  final String Name;
  final int? Year;

  User({
    this.id = '',
    required this.Title,
    required this.Name,
    required this.Year,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'Title': Title,
        'Name': Name,
        'Year': Year,
      };
}
