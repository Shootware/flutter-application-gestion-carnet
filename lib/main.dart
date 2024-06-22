import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(HospitalManagementApp());
}

class HospitalManagementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hospital Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen(),
    );
  }
}
