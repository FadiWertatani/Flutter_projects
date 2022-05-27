import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BMI_Screen.dart';
import 'BMI_Screen_Result.dart';
import 'Counter.dart';
import 'Home_Screen2.dart';
import 'Login_Screen.dart';
import 'Messanger_Screen.dart';
import 'User_Screen.dart';

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
              Container(
                  width: double.infinity,
                  height: 40.0,
                  child: MaterialButton(
                    color: Colors.tealAccent,
                    child: Text(
                      'Photo Screen',
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Homescreen(),
                        ),
                      );
                    },
                  )),
              SizedBox(
                height: 20.0,
              ),
              Container(
                  width: double.infinity,
                  height: 40.0,
                  child: MaterialButton(
                    color: Colors.tealAccent,
                    child: Text(
                      'Login Screen',
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                  )),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 40.0,
                child: MaterialButton(
                  color: Colors.tealAccent,
                  child: Text(
                    'Messanger design',
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MessangerScreen(),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                  width: double.infinity,
                  height: 40.0,
                  child: MaterialButton(
                    color: Colors.tealAccent,
                    child: Text(
                      'User Screen',
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserScreen(),
                        ),
                      );
                    },
                  )),
              SizedBox(
                height: 20.0,
              ),
              Container(
                  width: double.infinity,
                  height: 40.0,
                  child: MaterialButton(
                    color: Colors.tealAccent,
                    child: Text(
                      'Counter',
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Counter(),
                        ),
                      );
                    },
                  )),
              SizedBox(
                height: 20.0,
              ),
              Container(
                  width: double.infinity,
                  height: 40.0,
                  child: MaterialButton(
                    color: Colors.tealAccent,
                    child: Text(
                      'BMI Calculator',
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BMIScreen(),
                        ),
                      );
                    },
                  )),
            ],
          ),
        ));
  }
}
