import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:re_learn/modules/Todo/shared/cubit/cubit.dart';
import 'package:re_learn/modules/Todo/shared/cubit/states.dart';
import 'package:re_learn/shared/components/components.dart';
class NewTasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var tasks = AppCubit.get(context).newTasks;
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state){},
      builder: (context, state){
        var tasks = AppCubit.get(context).newTasks;
        return taskBuilder(tasks: tasks);
      },
    );
  }

}