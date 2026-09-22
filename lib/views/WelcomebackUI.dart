// ignore_for_file: file_names, sort_child_properties_last, deprecated_member_use, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:flutter_workshop_ui_project/views/ForgotUI.dart';
import 'package:flutter_workshop_ui_project/views/HomeUI.dart';
import 'package:flutter_workshop_ui_project/views/RegisterUi.dart';

class Welcomebackui extends StatefulWidget {
  const Welcomebackui({super.key});

  @override
  State<Welcomebackui> createState() => _WelcomebackuiState();
}

class _WelcomebackuiState extends State<Welcomebackui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  child: SizedBox(
                    width: double.infinity,
                    height: 400,
                    child: Image.asset(
                      'assets/images/img_orange2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 15,
                  left: 15,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white70,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 20,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Homeui(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome ",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "back",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              "Login to your account",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Enter email or phone",
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 18,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: " password",
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 18,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Colors.grey[500],
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Forgotui(),
                    ),
                  );
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: Colors.orange[700],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Log in',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  fixedSize: Size(
                    MediaQuery.of(context).size.width,
                    55,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Colors.orange,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "OR",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/img_g.png",
                    width: 30,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/img_f.png",
                    width: 30,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/img_a.png",
                    width: 30,
                  ),
                ),
              ],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Registerui(),
                        ),
                      );
                    },
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
