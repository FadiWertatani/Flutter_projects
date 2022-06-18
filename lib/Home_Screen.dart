import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:re_learn/shared/components/components.dart';

import 'layout/home_layout.dart';
import 'modules/BMI/BMI_Screen.dart';
import 'modules/counter/Counter.dart';
import 'modules/Photo/Home_Screen2.dart';
import 'modules/auth/Login_Screen.dart';
import 'modules/messanger/Messanger_Screen.dart';
import 'modules/users/User_Screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Home Screen',
          ),
          elevation: 100.0,
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              defaultHomeScreenButton(
                text: 'PhotoScreen',
                go: Homescreen(),
                context: context,
                radius: 20.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              defaultHomeScreenButton(
                go: LoginScreen(),
                context: context,
                text: 'Login Screen',
                radius: 20.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              defaultHomeScreenButton(
                text: 'Messanger Design',
                go: MessangerScreen(),
                context: context,
              ),
              SizedBox(
                height: 20.0,
              ),
              defaultHomeScreenButton(
                text: 'User Screen',
                context: context,
                go: UserScreen(),
              ),
              SizedBox(
                height: 20.0,
              ),
              defaultHomeScreenButton(
                text: 'Counter',
                go: Counter(),
                context: context,
              ),
              SizedBox(
                height: 20.0,
              ),
              defaultHomeScreenButton(
                text: 'BMI Calculator',
                go: BMIScreen(),
                context: context,
              ),
              SizedBox(
                height: 20.0,
              ),
              defaultHomeScreenButton(
                text: 'Todo App',
                go: HomeLayout(),
                context: context,
              )
            ],
          ),
        ));
  }
}
