import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:re_learn/modules/Todo/shared/cubit/cubit.dart';
import 'package:re_learn/modules/Todo/shared/cubit/states.dart';

//1. create database
//2. create tables
//3. open database
//4. insert into database
//5.get data from database
//6.update in database
//7. delete from database

class HomeLayout extends StatelessWidget {


  TextEditingController _titleC = TextEditingController();
  TextEditingController _dateC = TextEditingController();
  TextEditingController _timeC = TextEditingController();


  var formKey = GlobalKey<FormState>();
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit()..createDatabase(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (BuildContext context,AppStates state){
          if(state is AppInsertDatabaseState){
            Navigator.pop(context);
          }
        },
        builder: (BuildContext context, AppStates state) {

          AppCubit cubit = AppCubit.get(context);

          return Scaffold(
            key: scaffoldKey,
            appBar: AppBar(
              title: Text(
                cubit.titles[cubit.currentIndex],
              ),
            ),
            body: ConditionalBuilder(
              condition: true,
              builder: (context) => cubit.screens[cubit.currentIndex],
              fallback: (context) => Center(child: CircularProgressIndicator(),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                if(cubit.isBottomSheetShown){
                  if(formKey.currentState!.validate()){
                    cubit.insertDatabase(
                        title: _titleC.text,
                        date: _dateC.text,
                        time: _timeC.text,
                    );
                  }
                  cubit.isBottomSheetShown = false;
                }else{
                  scaffoldKey.currentState!.showBottomSheet(
                        (context) => Container(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
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
                                      // Row(
                                      //   mainAxisAlignment: MainAxisAlignment.end,
                                      //   children: [
                                      //     TextButton(
                                      //       onPressed: () {
                                      //         if(formKey.currentState!.validate()){
                                      //           // insertDatabase(
                                      //           //   title: _titleC.text.trim(),
                                      //           //   date: _dateC.text.trim(),
                                      //           //   time: _timeC.text.trim(),
                                      //           //   status: '',
                                      //           // ).then((value){
                                      //           //   Navigator.pop(context);
                                      //           //   // setState(() {
                                      //           //   //   getData(database).then((value) {
                                      //           //   //     // setState(() {
                                      //           //   //     //   tasks = value;
                                      //           //   //     // });
                                      //           //   //   });
                                      //           //   // });
                                      //           // }
                                      //           // );
                                      //         }
                                      //       },
                                      //       child: const Text('Add task'),
                                      //     ),
                                      //   ],
                                      // ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                  ).closed.then((value) {
                    cubit.changeBottomSheetState(
                        isShow: false,
                        icon: Icons.edit_outlined,
                    );
                  });
                  cubit.changeBottomSheetState(
                    isShow: true,
                    icon: Icons.add_outlined,
                  );
                }
              },
              child: Icon(
                cubit.fabIcon,
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: AppCubit.get(context).currentIndex,
              onTap: (index) {
                AppCubit.get(context).changeIndex(index);
              },
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
        },
      ),
    );
  }

}
