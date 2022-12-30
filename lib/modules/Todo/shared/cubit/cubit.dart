import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:re_learn/modules/Todo/archive_tasks/Archived_Tasks_Screen.dart';
import 'package:re_learn/modules/Todo/done_tasks/Done_Tasks_Screen.dart';
import 'package:re_learn/modules/Todo/new_tasks/New_Tasks_Screen.dart';
import 'package:re_learn/modules/Todo/shared/cubit/states.dart';
import 'package:sqflite/sqflite.dart';


class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialStates());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  //task list for todoApp
  List<Map> newTasks = [];
  List<Map> doneTasks = [];
  List<Map> archiveTasks = [];

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
        getData(database);

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
          'INSERT INTO tasks (title, date, time, status) VALUES("${title}", "${date}", "${time}", "new")')
          .then((value) {
        print("$value inserted successfully");
        emit(AppInsertDatabaseState());

        getData(database);
      }).
      catchError((error){print(error);});
    });
  }

  void getData(database) async {

    newTasks = [];
    doneTasks = [];
    archiveTasks = [];

    emit(AppGetDatabaseLoadingState());
    
    database.rawQuery('SELECT * FROM tasks').then((value) {

      value.forEach((element) {
        if(element['status'] == 'new') newTasks.add(element);
        else if (element['status'] == 'done') doneTasks.add(element);
        else archiveTasks.add(element);
      });


      emit(AppGetDatabaseState());
    }
    );
  }

  void updateData({
  required String status,
  required int id,
}) async {
    database.rawUpdate(
        'UPDATE tasks SET status = ? WHERE id = ?',
        ['$status', id]).then((value) {
          getData(database);
          emit(AppUpdateDatabaseState());
    });
    // print('updated: $count');
  }

  void deleteData({
    required int id,
  }) async {
    database.rawDelete('DELETE FROM tasks WHERE id = ?', [id])
        .then((value) {
      getData(database);
      emit(AppDeleteDatabaseState());
    });
    // print('updated: $count');
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