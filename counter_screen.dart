
import 'package:calculator/cubit/counter_cubit.dart';
import 'package:calculator/cubit/counter_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';


class CounterScreen extends StatelessWidget {
  // final ValueNotifier<int> _counterNotifier = ValueNotifier(0);
  // StreamController<int> _controller = StreamController<int>.broadcast();

  // int count =0;

  // StreamSubscription? subscription;

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('First Screen'),
       ),
      body: Center(
        // child:StreamBuilder<int>(
        //   stream: _controller.stream,
        //   initialData: count,
          //builder: (context,snapshot){ 
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                if (state is CounterLoading) {
                  return CupertinoActivityIndicator(radius: 28);
                } else if (state is CounterSuccess) {
                  return Text(
                    "${state.count}",
                    style: TextStyle(fontSize: 40),
                  );
                } else if (state is CounterErrorState) {
                  return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Something went wrong!!",
                   style:TextStyle(fontSize:20),
                   ),
                   Gap(8),
                   Text(
                    state.message,
                      style:TextStyle(fontSize:16),
                   ),
                   Gap(8),
                   Text(
                   "Please try again!!",
                      style:TextStyle(fontSize:16,
                      fontWeight: FontWeight.bold,
                      ),
                   )
                ],
              
             );
          
                }else{
                return Container();
              }
              
            },
          ),
      
           Gap(16),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AnotherScreen(),
                  ),
                );
              },
              child: Text("Another Screen"),
            ),
          ], 
        ),
      ),
  
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<CounterCubit>(context).increment();
          // count++;
          // _controller.sink.add(count);
          // _counterNotifier.value = _counterNotifier.value + 1;
          // print(_counterNotifier.value);
        },
        child: Icon(CupertinoIcons.add),
      ),
    );
  }
}
class AnotherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Another Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                if (state is CounterLoading) {
                  return CupertinoActivityIndicator(radius: 28);
                } else if (state is CounterSuccess) {
                  return Text(
                    "${state.count}",
                    style: TextStyle(fontSize: 40),
                  );
                } else if (state is CounterErrorState) {
                  return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Something went wrong!!",
                   style:TextStyle(fontSize:20),
                   ),
                   Gap(8),
                   Text(
                    state.message,
                      style:TextStyle(fontSize:16),
                   ),
                   Gap(8),
                   Text(
                   "Please try again!!",
                      style:TextStyle(fontSize:16,
                      fontWeight: FontWeight.bold,
                      ),
                   )
                ],
              
             );
          
                }else{
                return Container();
              }
              
            },
          ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<CounterCubit>(context).increment();
        },
        child: Icon(CupertinoIcons.add),
      ),
    );
  }
}