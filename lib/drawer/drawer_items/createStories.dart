import 'package:flutter/material.dart';

class CreateStories extends StatelessWidget {
  const CreateStories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        toolbarHeight: 65,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.black87,
        child: Center(
          child: Text(
            'Create Stories',
            style: TextStyle(
              fontSize: 25,
              color: Colors.yellow[700],
            ),
          ),
        ),
      ),
    );
  }
}
