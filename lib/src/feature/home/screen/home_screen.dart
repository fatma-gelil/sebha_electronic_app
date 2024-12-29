import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task4/src/feature/home/cubit/counter_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        //
      },
      builder: (context, state) {
        CounterCubit counter = BlocProvider.of(context);
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 218, 179, 192),
            centerTitle: true,
            title: const Text("//",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top:60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Text(
                        state.count.toString(),
                        style: const TextStyle(fontSize: 32),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(40),
                        elevation: 5,
                      ),
                      onPressed: counter.reset,
                      child: const Icon(Icons.restart_alt_rounded,size: 30,),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(40),
                        elevation: 5,
                      ),
                      onPressed: counter.add,
                      child: const Icon(Icons.add,size: 30,),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
