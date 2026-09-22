// ignore_for_file: file_names, sort_child_properties_last, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_workshop_ui_project/views/NewPasswordUI.dart';

class OtpUI extends StatefulWidget {
  const OtpUI({super.key});

  @override
  State<OtpUI> createState() => _OtpUIState();
}

class _OtpUIState extends State<OtpUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/images/img_orange3.png",
                  width: 500,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 25,
                    left: 15,
                    right: 50,
                  ),
                  child: Row(
                    children: [
                      Positioned(
                        top: 15,
                        left: 15,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.amber[200],
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            icon: const Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.amber,
                              size: 20,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "OTP Verification",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enter OTP',
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
                  'An 4 digit code has been sent to your',
                ),
              ),
            ),
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'email',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 60,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.grey[100],
                          contentPadding: EdgeInsets.all(
                            20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                  width: 15,
                ),
                    SizedBox(
                      width: 60,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.grey[100],
                          contentPadding: EdgeInsets.all(
                            20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                  width: 15,
                ),
                    SizedBox(
                      width: 60,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.grey[100],
                          contentPadding: EdgeInsets.all(
                            20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                  width: 15,
                ),
                    SizedBox(
                      width: 60,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.grey[100],
                          contentPadding: EdgeInsets.all(
                            20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
            ),
            SizedBox(
              height: 15,
            ),
             Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You should recieve the OTP in',
                  ),
                  TextButton(
                    onPressed: (){ },
                    child: Text(
                      '30 Second',
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     ),
                ],
              ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Newpasswordui(),
                    ),
                  );
                },
                child: Text(
                  'Verify',
                  style: TextStyle(
                    fontSize: 25,
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
           
          ],
        ),
      ),
    );
  }
}
