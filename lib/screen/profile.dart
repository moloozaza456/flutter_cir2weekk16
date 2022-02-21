import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static String id = '/profile';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text("ประวัติส่วนตัว"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: const Center(
        child: Text("Profile Screen"),
      ),
    );
  }
}