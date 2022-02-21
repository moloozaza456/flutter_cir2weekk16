import 'package:flutter/material.dart';

import 'package:flutter15/screen/contact.dart';
import 'package:flutter15/screen/first_screen.dart';
import 'package:flutter15/screen/home.dart';
import 'package:flutter15/screen/profile.dart';
import 'package:flutter15/screen/login.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        FirstScreen.id: (context) => FirstScreen(),
        ContactScreen.id: (context) => ContactScreen(),
        ProfileScreen.id: (context) => ProfileScreen(),
        LoginScreen.id: (context) => LoginScreen(),
      },
    );
  }

}