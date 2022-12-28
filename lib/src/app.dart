// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Me In!',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
