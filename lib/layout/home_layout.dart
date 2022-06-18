import 'package:flutter/material.dart';
import 'package:re_learn/modules/Todo/archive_tasks/Archived_Tasks_Screen.dart';
import 'package:re_learn/modules/Todo/done_tasks/Done_Tasks_Screen.dart';
import 'package:re_learn/modules/Todo/new_tasks/New_Tasks_Screen.dart';
import 'package:sqflite/sqflite.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;
  List<Widget> screens = [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];
  List<String> titles = [
    'New Tasks',
    'Do Tasks',
    'Archived Tasks',
  ];

  @override
  void initState() {
    super.initState();

    createDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titles[currentIndex],
        ),
      ),
      body: screens[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /*try {
            var name = await getName();
            print(name);
          } catch (e) {
            print('error: ${e.toString()}');
          }*/
          //print value before Fadi String
          getName().then((value) {
            print(value);
            print('Fadi');
          }).catchError((e) {
            print('error: ${e.toString()}');
          });
        },
        child: Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        //currentIndex: 0, The default Button selected
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.check_circle_outlined,
            ),
            label: 'Done',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.archive_outlined,
            ),
            label: 'Archived',
          ),
        ],
      ),
    );
  }

  Future<String> getName() async {
    return 'Fadi Wertatani';
  }

  //1. create database
  //2. create tables
  //3. open database
  //4. insert into database
  //5.get data from database
  //6.update in database
  //7. delete from database

  void createDatabase() async {
    var database = await openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database, version) async {
        print('Database created');
        await database.execute(
          'CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT, date TEXT, time TEXT, status TEXT)',
        );
      },
      onOpen: (database) {
        print('Database opened');
      },
    );
  }

  void insertDatabase() {}
}
