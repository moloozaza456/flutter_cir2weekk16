import 'package:flutter/material.dart';

import 'contact.dart';
import 'first_screen.dart';
import 'login.dart';
import 'profile.dart';

class HomeScreen extends StatefulWidget {
  static String id = '/home';

  const HomeScreen({Key? key}) : super(key: key); //1.create Constructor

  @override
  State<HomeScreen> createState() => _HomeScreenState(); //2.create state
}

class _HomeScreenState extends State<HomeScreen> {
  int index_ = 0;

  List pages = [
    // HomeScreen(),
    const FirstScreen(),// index_ = 0
    const ProfileScreen(),// index_ = 1
    const ContactScreen(),// index_ = 2
    const LoginScreen(),// index_ = 3
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("   App"),
      //   centerTitle: true,
      //   backgroundColor: Colors.indigo,
      // ),
      body: pages[index_],
      drawer: Drawer(
        child: ListView(
          children: [
            const SizedBox(
              child: UserAccountsDrawerHeader(
                accountName: Text("Dumrong Namwong"),
                accountEmail: Text("a@gmail.com"),
                decoration: BoxDecoration(
                  color: Colors.indigo,
                ),
                currentAccountPicture: CircleAvatar(
                  // backgroundColor: Colors.amber,
                  backgroundImage: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/1/18/Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg"),
                ),
              ),
            ),
            ListTile(
              title: const Text("หน้าแรก",
                  style: TextStyle(color: Colors.indigo, fontSize: 15)),
              leading: const Icon(
                Icons.home,
                color: Colors.indigo,
                size: 30,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
            ),
            ListTile(
              title: const Text("โปรไฟล์",
                  style: TextStyle(color: Colors.indigo, fontSize: 15)),
              leading: const Icon(
                Icons.manage_accounts,
                color: Colors.indigo,
                size: 30,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileScreen()));
              },
            ),
            ListTile(
              title: const Text("ติดต่อ",
                  style: TextStyle(color: Colors.indigo, fontSize: 15)),
              leading: const Icon(
                Icons.contact_page,
                color: Colors.indigo,
                size: 30,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContactScreen()));
              },
            ),
            ListTile(
              title: const Text("หน้าแรก",
                  style: TextStyle(color: Colors.indigo, fontSize: 15)),
              leading: const Icon(
                Icons.call,
                color: Colors.indigo,
                size: 30,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FirstScreen()));
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index_,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "หน้าแรก",
              backgroundColor: Colors.indigo),
          BottomNavigationBarItem(
              icon: Icon(Icons.manage_accounts),
              label: "โปรไฟล์",
              backgroundColor: Colors.teal),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_page),
              label: "ติดต่อ",
              backgroundColor: Colors.purple),
          BottomNavigationBarItem(
              icon: Icon(Icons.login),
              label: "เข้าสู่ระบบ",
              backgroundColor: Colors.red),
        ],
        onTap: (index) {
          setState(() {
            index_ = index;
          });
          print(index);
        },
        
      ),
    );
  }
}