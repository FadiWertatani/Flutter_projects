import 'package:flutter/material.dart';

import 'Counter.dart';
import 'Counter_Screen.dart';
import 'Home_Screen.dart';
import 'Home_Screen2.dart';
import 'Login_Screen.dart';
import 'Messanger_Screen.dart';
import 'Messanger_withoutList.dart';
import 'User_Screen.dart';
import 'Users_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
