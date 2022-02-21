import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static String id = '/login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String name = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("เข้าสู่ระบบ"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (value) {
                  if (value == "") {
                    return 'กรุณากรอกชื่อผู้ใช้'; // null show ouput
                  }
                  return null;
                },
                onSaved: (value) {
                  print("ชื่อ : $value");
                },
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'ชื่อผู้ใช้',
                  border: OutlineInputBorder(),
                  hintText: "กรุณากรอกชื่อผู้ใช้",
                  prefixIcon: Icon(Icons.person),
                ),
                maxLength: 20,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.length < 3) {
                    return 'กรุณากรอกรหัสผ่านมากว่า 3 ตัว'; // null show ouput
                  }
                  return null;
                },
                onSaved: (value) {
                  print("รหัสผ่าน : $value");
                },
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: 'รหัสผ่าน',
                  border: OutlineInputBorder(),
                  hintText: "กรุณากรอกรหัสผ่าน",
                  prefixIcon: Icon(Icons.lock),
                  helperText: "รหัสผ่านต้องมากว่า 3 ตัว",
                ),
                obscureText: true, // disble show password
                maxLength: 20,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 5,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate() == true) {
                    _formKey.currentState!.save();
                    // showDialog(
                    //   context: context,
                    //   builder: (context) => AlertDialog(
                    //     content: Text("ขอบคุณที่กรอกข้อมูล"),
                    //     actions: [
                    //       ElevatedButton(
                    //           onPressed: () {
                    //             Navigator.pop(context);
                    //           },
                    //           child: Text("ตกลง"))
                    //     ],
                    //     // backgroundColor: Colors.teal,
                    //     shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(10)),
                    //   ),
                    // );
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("ขอบคุณที่กรอกข้อมูล")));
                    print("สมัครสำเร็จ");
                  }
                },
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
