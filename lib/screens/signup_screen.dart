import 'package:flutter/material.dart';
import 'signin_screen.dart';
import 'first_screen.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SignUp',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.orange[800],
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Create An Account',
              style: TextStyle(color: Colors.teal, fontSize: 25),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.only(
                left: 25,
                top: 30,
                right: 25,
                bottom: 30,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.black87,
                ),
                title: TextField(
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                    hintStyle: TextStyle(color: Colors.black38),
                    border: InputBorder.none,
                  ),
                ),
                // Text(
                //   'Full Name',
                //   style: TextStyle(color: Colors.black38),
                // ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.only(
                left: 25,
                right: 25,
                bottom: 30,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.black87,
                ),
                title: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.black38),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.lock,
                  color: Colors.black87,
                ),
                title: TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.black38),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => FirstScreen()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.teal[600],
                ),
                height: 50,
                width: 200,
                padding: EdgeInsets.only(top: 12.5),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SigninScreen()),
                );
              },
              child: Text(
                'Already have an account? SignIn here',
                style: TextStyle(
                  color: Colors.orange[800],
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
