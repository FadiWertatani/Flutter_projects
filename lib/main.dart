import 'package:flutter/material.dart';

import 'layout/home_layout.dart';
import 'modules/counter/Counter.dart';
import 'modules/counter/Counter_Screen.dart';
import 'Home_Screen.dart';
import 'modules/Photo/Home_Screen2.dart';
import 'modules/auth/Login_Screen.dart';
import 'modules/users/User_Screen.dart';
import 'modules/users/Users_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
    );
  }
}
