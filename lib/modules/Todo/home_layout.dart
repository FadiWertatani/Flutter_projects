import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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

  late Database database;

  TextEditingController _titleC = TextEditingController();
  TextEditingController _dateC = TextEditingController();
  TextEditingController _timeC = TextEditingController();

  var formKey = GlobalKey<FormState>();

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
          _showDialog();
          /*try {
            var name = await getName();
            print(name);
          } catch (e) {
            print('error: ${e.toString()}');
          }*/
          //print value before Fadi String
          // getName().then((value) {
          //   print(value);
          //   print('Fadi');
          // }).catchError((e) {
          //   print('error: ${e.toString()}');
          // });
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

  _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: SingleChildScrollView(
            child: AlertDialog(
              actions: [
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _titleC,
                        keyboardType: TextInputType.text,
                        onFieldSubmitted: (value) {
                          print(value);
                        },
                        onChanged: (value) {
                          print(value);
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Title must not be empty';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Title...',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.title_outlined,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      TextFormField(
                        controller: _dateC,
                        keyboardType: TextInputType.text,
                        onFieldSubmitted: (value) {
                          print(value);
                        },
                        onChanged: (value) {
                          print(value);
                        },
                        decoration: InputDecoration(
                          labelText: 'Date...',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.date_range_outlined,
                          ),
                        ),
                        onTap: (){
                          showDatePicker(context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime.parse('2023-12-31'),
                          ).then((value){
                            print(DateFormat.yMMMd().format(value!));
                            _dateC.text = DateFormat.yMMMd().format(value);
                          });
                        },
                      ),
                      SizedBox(height: 8.0),
                      TextFormField(
                        controller: _timeC,
                        keyboardType: TextInputType.text,
                        onFieldSubmitted: (value) {
                          print(value);
                        },
                        onChanged: (value) {
                          print(value);
                        },
                        decoration: InputDecoration(
                          labelText: 'Time...',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.timer_outlined,
                          ),
                        ),
                        onTap: (){
                          showTimePicker(context: context, initialTime: TimeOfDay.now())
                              .then((value) {
                            _timeC.text = value!.format(context).toString();
                            print(value.format(context));
                          });
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              if(formKey.currentState!.validate()){
                                insertDatabase().then((value){
                                  Navigator.pop(context);
                                });
                              }
                            },
                            child: const Text('Add task'),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  //1. create database
  //2. create tables
  //3. open database
  //4. insert into database
  //5.get data from database
  //6.update in database
  //7. delete from database

  void createDatabase() async {
    database = await openDatabase(
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

  Future<void> insertDatabase() async {
    return await database.transaction((txn) async {
      await txn.rawInsert(
          'INSERT INTO tasks (title, date, time, status) VALUES("${_titleC.text.trim()}", "${_dateC.text.trim()}", "${_timeC.text.trim()}", "")')
          .then((value) {
            print("$value inserted successfully");
      }).
      catchError((error){print(error);});
    });
  }
}
