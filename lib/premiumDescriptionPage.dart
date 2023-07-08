import 'package:flutter/material.dart';

class PremiumDescriptive extends StatefulWidget {
  @override
  State<PremiumDescriptive> createState() => _PremiumDescriptiveState();
}

class _PremiumDescriptiveState extends State<PremiumDescriptive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
        color: Colors.white,
      ),
    );
  }
}
