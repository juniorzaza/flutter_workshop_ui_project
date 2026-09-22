// ignore_for_file: file_names, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_workshop_ui_project/views/WelcomebackUI.dart';

class Homeui extends StatelessWidget {
  const Homeui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Image.asset(
              "assets/images/img_orange1.png",
              width: 500,
            ),
            SizedBox(
              height: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "BERRY ",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "JUICE",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              'A Moments of healthy sip ',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Text(
              'The best vitamin for your health',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 120,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Welcomebackui(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFFA800),
                fixedSize: const Size(350, 50),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Explore Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 14,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
