import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../bottomNavBar.dart';
import 'firbase_auth.dart';
import 'signup_screen.dart';

class SigninScreen extends StatefulWidget {
  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final FirebaseAuthServices _auth = FirebaseAuthServices();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
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
              'SignIn',
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
              'Welcome Back!',
              style: TextStyle(color: Colors.teal, fontSize: 25),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.only(
                left: 25,
                right: 25,
                top: 30,
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
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignupScreen(),
                  ),
                );
              },
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Colors.yellow[700],
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: _signIn,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.teal[600],
                ),
                height: 50,
                width: 200,
                padding: EdgeInsets.only(top: 12.5),
                child: Text(
                  'Sign In',
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
                  MaterialPageRoute(builder: (context) => SignupScreen()),
                );
              },
              child: Text(
                'Don\'t have an account? SignUp here',
                style: TextStyle(
                  color: Colors.orange[800],
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _signIn() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);
    if (user != null) {
      print('User is successfully signedIn');
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => FirstScreen()),
          (route) => false);
    } else {
      setState(() {
        Alert(
          context: context,
          title: 'OOPS!',
          desc: 'Your entered email or password or both must be wrong.',
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
