import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:re_learn/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
        elevation: 100.0,
        actions: [
          IconButton(
            onPressed: () {
              print("Help");
            },
            icon: Icon(
              Icons.help,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    onChanged: (value) {
                      print(value);
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Email address must be empty';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: isVisible,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    onChanged: (value) {
                      print(value);
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password must not be empty';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      suffixIcon: IconButton(
                        icon: isVisible
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                    function: () {
                      if (formKey.currentState!.validate()) {
                        print(emailController.text);
                        print(passwordController.text);
                      }
                    },
                    text: 'login',
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Register Now',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
