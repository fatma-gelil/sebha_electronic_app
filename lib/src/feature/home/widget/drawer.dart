
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task4/src/feature/home/cubit/counter_cubit.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    CounterCubit counter = BlocProvider.of<CounterCubit>(context);

    return Drawer(
      backgroundColor: Colors.transparent,
      child: Column(
        children: [
           DrawerHeader(child:Image.asset('assets/images/logo.png')),
          ElevatedButton(
            onPressed: () {
              counter.title1();
            },
            child: const Text(
             'سبحان الله' ,
              style: TextStyle(color: Colors.black,fontSize: 30),
            ),
          ),
          const SizedBox(height: 40,),
          ElevatedButton(
            onPressed: () {
              counter.title2();
            },
            child: const Text(
              'الحمد لله',
              style: TextStyle(color: Colors.black,fontSize: 30),
            ),
          ),
          const SizedBox(height: 40,),
          ElevatedButton(
            onPressed: () {
              counter.title3();
            },
            child: const Text(
              'لا اله الا الله',
              style: TextStyle(color: Colors.black,fontSize: 30),
            ),
          ),
          
          
        ],
      ),
    );
  }
}
