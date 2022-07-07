import 'package:bloc/bloc.dart';
import 'package:counter/Cubit/CounterStates.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit( ) : super(CounterInitialState());
int counter = 1;
void increment(){
  counter++;
  print(counter);
  emit(CounterIncrementState());
}
  void decrement(){
    counter--;
    emit(CounterDecrementState());

  }
}
