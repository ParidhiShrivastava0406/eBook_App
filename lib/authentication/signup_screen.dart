import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'signin_screen.dart';
import '../bottomNavBar.dart';
import 'firbase_auth.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final FirebaseAuthServices _auth = FirebaseAuthServices();

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
                  controller: _usernameController,
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
                  controller: _emailController,
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
                  controller: _passwordController,
                  obscureText: true,
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
              onTap: _signUp,
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
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => SigninScreen()),
                    (route) => false);
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

  void _signUp() async {
    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);
    if (user != null) {
      print('User is successfully created');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => FirstScreen()));
    } else {
      setState(() {
        Alert(
          context: context,
          title: 'OOPS!',
          desc: '1. Password should be atleast 6 characters. \n'
              '2. Your entered email must be wrong.\n'
              '3. The email address is already in use by another account.',
          buttons: [
            DialogButton(
              color: Colors.teal[600],
              child: Text(
                "Ok",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Raleway',
                ),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            )
          ],
        ).show();
      });
    }
  }
}
