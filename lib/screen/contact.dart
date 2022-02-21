import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  static String id = '/contact';
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text("Flutter App"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: const Center(
        child: Text("Contact Screen"),
      ),
    );
  }
}