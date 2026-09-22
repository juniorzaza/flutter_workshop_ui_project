// ignore_for_file: file_names, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_workshop_ui_project/views/HomeUI.dart';

class Newpasswordui extends StatefulWidget {
  const Newpasswordui({super.key});

  @override
  State<Newpasswordui> createState() => _NewpassworduiState();
}

class _NewpassworduiState extends State<Newpasswordui> {
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
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              ],
            ),
           Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Create New Password',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enter new password',
                ),
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
                  hintText: "Enter New password",
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
                  hintText: " Confirm password",
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
            
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Homeui(),
                     ),
                  );
                },
                child: Text(
                  'Submit',
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
          ]
          
        ),
      ),
      );
  
    
  }
}