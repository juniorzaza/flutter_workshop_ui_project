// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_workshop_ui_project/views/HomeUI.dart';

void main() {
  runApp(
    flutterWorkshopUiProject(),
  );
}

class flutterWorkshopUiProject extends StatefulWidget {
  const flutterWorkshopUiProject({super.key});

  @override
  State<flutterWorkshopUiProject> createState() => _flutterWorkshopUiProjectState();
}

class _flutterWorkshopUiProjectState extends State<flutterWorkshopUiProject> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homeui(),
    );
  }
}