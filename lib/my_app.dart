import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task4/src/feature/home/cubit/counter_cubit.dart';
import 'package:task4/src/feature/home/screen/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => CounterCubit(),
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Splash() ,
    ),);
  }
}
