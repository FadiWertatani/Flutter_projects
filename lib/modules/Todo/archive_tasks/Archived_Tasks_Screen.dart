import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:re_learn/modules/Todo/shared/cubit/cubit.dart';
import 'package:re_learn/modules/Todo/shared/cubit/states.dart';
import 'package:re_learn/shared/components/components.dart';

class ArchivedTasksScreen extends StatelessWidget {
  const ArchivedTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state){},
      builder: (context, state){
        var tasks = AppCubit.get(context).archiveTasks;
        return taskBuilder(tasks: tasks);
      },
    );
  }
}
