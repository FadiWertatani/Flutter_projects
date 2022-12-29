import 'package:flutter/material.dart';
import 'package:re_learn/modules/Todo/shared/cubit/cubit.dart';

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

//TodoItem
Widget buildTaskItem(Map model, context) => Padding(
  padding: const EdgeInsets.all(12.0),
  child: Row(
    children: [
      CircleAvatar(
        radius: 38.0,
        child: Center(
          child: Text(
            '${model['time']}',
          ),
        ),
      ),
      SizedBox(
          width: 20.0
      ),
      Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${model['title']}',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${model['date']}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      SizedBox(
          width: 20.0
      ),
      IconButton(
        onPressed: (){
          AppCubit.get(context).updateData(status: 'done', id: model['id']);
        },
        icon: Icon(Icons.check_box,color: Colors.green,),
      ),
      IconButton(
        onPressed: (){
          AppCubit.get(context).updateData(status: 'archive', id: model['id']);
        },
        icon: Icon(Icons.archive,color: Colors.blueGrey,),
      )
    ],
  ),
);