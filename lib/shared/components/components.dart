import 'package:flutter/material.dart';

//Login Button component
Widget defaultButton({
  double width = double.infinity,
  double height = 40.0,
  Color background = Colors.blue,
  required Function function,
  required String text,
  bool isUpperCase = true,
}) =>
    Container(
      width: width,
      color: background,
      height: height,
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

//Home Screen button component
Widget defaultHomeScreenButton({
  double width = double.infinity,
  double height = 40.0,
  Color background = Colors.tealAccent,
  double radius = 10.0,
  required String text,
  required Widget go,
  required BuildContext context,
}) =>
    Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
      ),
      child: MaterialButton(
        color: background,
        child: Text(
          text,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => go,
            ),
          );
        },
      ),
    );

//Text Form field
Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  required Function validator,
  Function? onSubmit,
  Function? onChanged,
  required IconData prefix,
  IconData? suffix,
  required String label,
  bool isPassword = false,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onFieldSubmitted: onSubmit!(),
      onChanged: onChanged!(),
      validator: validator(),
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? Icon(
                Icons.remove_red_eye,
              )
            : null,
      ),
    );
