// ignore_for_file: file_names, sort_child_properties_last, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_workshop_ui_project/views/HomeUI.dart';
import 'package:flutter_workshop_ui_project/views/WelcomebackUI.dart';

class Registerui extends StatefulWidget {
  const Registerui({super.key});

  @override
  State<Registerui> createState() => _RegisteruiState();
}

class _RegisteruiState extends State<Registerui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                ClipPath(
                  child: Transform.translate(
                    offset: const Offset(0, -70),
                    child: SizedBox(
                      width: double.infinity,
                        height: 375,
                      child: Image.asset(
                        'assets/images/img_orange2.png',
                        fit: BoxFit.cover,
                      ),
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
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
                
              ],
            ),
              Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
            SizedBox(
              height: 2,
            ),
            Text(
              "Create your new account",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Name",
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
                  hintText: " E-mail",
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
              height: 14,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: " Phone",
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
              height: 14,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: " Password",
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
              height: 20,
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
              height: 20,
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
                      fontSize: 25,
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
              height: 10,
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
                  'Already have an Account? ',
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Welcomebackui(),
                        ));
                  },
                  child: Text(
                    'Log In',
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
           
          ],
        ),
      ),
    );
  }
}
