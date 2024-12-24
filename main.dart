import 'package:calculator/components/tab_form_example.dart';
import 'package:calculator/constants/routes.dart';
import 'package:calculator/counter_screen.dart';
import 'package:calculator/cubit/counter_cubit.dart';
import 'package:calculator/login_screen.dart';
import 'package:calculator/navigations/fall_back_screen.dart';
import 'package:calculator/product_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return GestureDetector(
    //   onTap: () {
    //     FocusScope.of(context).unfocus();
    //   },
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     theme: ThemeData(
    //       useMaterial3: false,
    //       primarySwatch: Colors.indigo,
    //     ),
    //     // ),
    //     // routes:{
    //     //   Routes.login:(context) => LoginScreen(),
    //     // },
    //        onGenerateRoute:(settings){
    //         if(settings.name ==Routes.login){
    //           return PageTransition(
    //             child: LoginScreen(),
    //             type:PageTransitionType.fade,
    //             alignment: Alignment.center,
    //             duration:Duration(milliseconds: 300),
            
    //           // return MaterialPageRoute(
    //           //   builder: (context) => LoginScreen(),
    //           //   settings:settings,
    //             );
    //         }else if(settings.name == Routes.homepage){
    //              return MaterialPageRoute(
    //               builder: (context) => TabFormExampleScreen(), 
    //               settings:settings,);
    //           }
    //           else if(settings.name == Routes.ProductDetails){
    //              return MaterialPageRoute(
    //               builder: (context) => ProductDetailScreen(), 
    //               settings:settings,);
    //               }else{
    //            return MaterialPageRoute(
    //             builder: (context) => FallbackRouteScreen(),
    //              settings:settings,);
    //         }
    //        },
    //   home:BlocProvider(
    //     create:(context) => CounterCubit(),
    //     child: CounterScreen(),
    //   )
    //   ),
    // );
    return BlocProvider(
    create: (context) => CounterCubit(),
    child: MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Counter',
      theme:ThemeData(
      primarySwatch: Colors.indigo,
    ),
    home:CounterScreen(),
    ),);
  }
}
