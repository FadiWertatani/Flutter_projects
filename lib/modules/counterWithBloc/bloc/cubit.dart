import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:re_learn/modules/counterWithBloc/bloc/states.dart';

class CounterCubit extends Cubit<CounterStates> {

  CounterCubit() : super(CounterInitialState());

  static CounterCubit get(context) => BlocProvider.of(context);

  int counter = 0;

  void minus(){
    counter--;
    //emit yaaneha badel
    emit(CounterMinusState(counter));
  }

  void plus(){
    counter++;
    emit(CounterPlusState());
  }

}