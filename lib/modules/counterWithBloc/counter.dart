import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:re_learn/modules/counterWithBloc/bloc/cubit.dart';
import 'package:re_learn/modules/counterWithBloc/bloc/states.dart';

class CounterM extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        //CounterCubit besh yaaref tebaa ana cubit
        //CounterStates besh yaaref he listen aala ana states
        //BlocConsumer houwa elli ykhadem l bloc
        listener: (context, state) {
          if(state is CounterMinusState) {
            print('Minus State ${state.counter}');
          }
          if(state is CounterPlusState) print('Plus State');
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                'Counter',
              ),
              centerTitle: true,
            ),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      child: Text(
                        'MINUS',
                      ),
                      onPressed: () {
                        CounterCubit.get(context).minus();
                      },
                    ),
                    Text(
                      '${CounterCubit.get(context).counter}',
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    TextButton(
                      child: Text(
                        'PLUS',
                      ),
                      onPressed: () {
                        CounterCubit.get(context).plus();
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
