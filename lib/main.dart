import 'package:ebook_app/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyDJzJlJ3IoIv_I411Tj8GDrx5qhUbjK7Nw",
          appId: "1:392183878903:android:35533238284d27fe0faff2",
          messagingSenderId: "392183878903",
          projectId: "wordsworth-87010"));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
