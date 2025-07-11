import 'package:flutter_bloc/flutter_bloc.dart';
class CounterCubit extends Cubit<int>{
  //pass initial state, you can pass any data type you want
  CounterCubit() : super(0);

  void increment() {
    //emit new state
    emit(state + 1);
  }
  
}