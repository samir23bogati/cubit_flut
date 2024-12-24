import 'dart:math';

import 'package:calculator/cubit/counter_state.dart';
import 'package:faker/faker.dart';
import'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit():super(CounterSuccess(count: 0));

int _count = 0;

 Future<void> increment()async{
  emit(CounterLoading());
  await  Future.delayed(Duration(milliseconds: 8));
  if (Random().nextBool()){

  _count++;
    emit(CounterSuccess(count:_count ));
  }else{
   
    emit(CounterErrorState(message:  Faker().lorem.sentence()));
  }
  }
}