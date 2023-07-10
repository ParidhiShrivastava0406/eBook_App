import 'dart:io';

import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Map<String?, dynamic>> _books = [
    {
      "image": "assets/images/1.jpg",
      "name": 'The Violet and the Tom',
      "author": 'Eve Ocotillo'
    },
    {
      "image": "assets/images/2.jpg",
      "name": 'The Student Prince',
      "author": 'FayJay'
    },
    {
      "image": "assets/images/3.jpg",
      "name": 'Heart in Hand',
      "author": 'salifiable'
    },
    {
      "image": "assets/images/4.jpg",
      "name": 'Like a Sparrow through the Heart',
      "author": 'Aggy Bird'
    },
    {
      "image": "assets/images/5.jpg",
      "name": 'A Promised Land',
      "author": 'Barack Obama'
    },
    {
      "image": "assets/images/6.jpg",
      "name": 'The Silent Patient',
      "author": 'Alex Michaelides'
    },
    {
      "image": "assets/images/7.jpg",
      "name": 'Shuggie Bain',
      "author": 'Douglas Stuart'
    },
    {
      "image": "assets/images/8.jpg",
      "name": 'The Gita for Children',
      "author": 'Roopa Pai'
    },
  ];
  List<Map<String?, dynamic>> _searchedBooks = [];
  @override
  @override
  void initState() {
    _searchedBooks = _books;
    super.initState();
  }

  void _runFilter(enteredKeyword) {
    List<Map<String?, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _books;
    } else {
      results = _books
          .where((books) => books["name"]
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _searchedBooks = results;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search & Filter',
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
      body: Container(
        color: Colors.black87,
        height: 2000,
        width: 2000,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) => _runFilter(value),
                cursorColor: Colors.grey[800],
                cursorHeight: 20,
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: Colors.black54,
                  ),
                  suffixIcon: Icon(Icons.search),
                  suffixIconColor: Colors.black38,
                  focusColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white38,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: _searchedBooks.length == 0
                    ? Center(
                        child: Text(
                          'No results found',
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            color: Colors.orange[700],
                            fontSize: 22,
                          ),
                        ),
                      )
                    : ListView.builder(
                        itemCount: _searchedBooks.length,
                        itemBuilder: (context, index) => Card(
                          key: ValueKey(_searchedBooks[index]["image"]),
                          color: Colors.grey[800],
                          elevation: 4,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: ListTile(
                            leading: Image.asset(
                              _searchedBooks[index]["image"],
                            ),
                            title: Text(
                              _searchedBooks[index]["name"],
                              style: TextStyle(
                                color: Colors.white60,
                                fontFamily: 'Raleway',
                              ),
                            ),
                            subtitle: Text(
                              _searchedBooks[index]["author"],
                              style: TextStyle(
                                color: Colors.black38,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
