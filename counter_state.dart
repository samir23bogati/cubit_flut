abstract class CounterState {}
class CounterLoading extends CounterState{}

class CounterSuccess extends CounterState{
  final int count;

  CounterSuccess({required this.count});
  
}
class CounterErrorState extends CounterState{
  final String message;

  CounterErrorState({required this.message});
}