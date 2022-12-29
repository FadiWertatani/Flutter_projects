import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:re_learn/modules/Todo/archive_tasks/Archived_Tasks_Screen.dart';
import 'package:re_learn/modules/Todo/done_tasks/Done_Tasks_Screen.dart';
import 'package:re_learn/modules/Todo/new_tasks/New_Tasks_Screen.dart';
import 'package:re_learn/modules/Todo/shared/cubit/states.dart';
import 'package:sqflite/sqflite.dart';

import '../../../../shared/components/constants.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialStates());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  //task list for todoApp
  List<Map> tasks = [];

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

  void changeIndex(int index){
    currentIndex = index;
    emit(AppChangeBottomNavBarState());
  }

  late Database database;

  void createDatabase() {
    openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database, version) async {
        print('Database created');
        await database.execute(
          'CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT, date TEXT, time TEXT, status TEXT)',
        );
      },
      onOpen: (database) {
        getData(database).then((value) {
          tasks = value;
          print(tasks);
          emit(AppGetDatabaseState());
          }
        );

        print('Database opened');
      },
    ).then((value) {
      database = value;
      emit(AppCreateDatabaseState());
    });
  }

  insertDatabase({
    required title,
    required date,
    required time,
  }) async {
    await database.transaction((txn) async {
      await txn.rawInsert(
          'INSERT INTO tasks (title, date, time, status) VALUES("${title}", "${date}", "${time}", "")')
          .then((value) {
        print("$value inserted successfully");
        emit(AppInsertDatabaseState());

        getData(database).then((value) {
          tasks = value;
          print(tasks);
          emit(AppGetDatabaseState());
          }
        );
      }).
      catchError((error){print(error);});
    });
  }

  Future<List<Map>> getData(database) async {
    return await database.rawQuery('SELECT * FROM tasks');
  }

  bool isBottomSheetShown = false;
  IconData fabIcon = Icons.edit_outlined;

  void changeBottomSheetState({
  required bool isShow,
    required IconData icon,
}){
    isBottomSheetShown = isShow;
    fabIcon = icon;
    emit(AppChangeBottomSheetState());
  }

}