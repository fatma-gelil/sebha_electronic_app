import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task4/src/feature/home/cubit/counter_cubit.dart';
import 'package:task4/src/feature/home/cubit/counter_state.dart';
import 'package:task4/src/feature/home/widget/drawer.dart';

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
        String appBarTitle = "سبحان الله";
        if (state is CounterTitleUpdate) {
          appBarTitle = state.title;
        }
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            drawer: const MyDrawer(),
            appBar: AppBar(
              backgroundColor: state.color,
              centerTitle: true,
              title: Text(appBarTitle,
                  style: const TextStyle(
                      fontSize: 26, fontWeight: FontWeight.bold)),
            ),
            body: Stack(children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/images/background.jfif',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
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
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: state.color,
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
                          onPressed: counter.add,
                          child: const Icon(
                            Icons.add,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 120,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(40),
                            elevation: 5,
                          ),
                          onPressed: counter.reset,
                          child: const Icon(
                            Icons.restart_alt_rounded,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[200],
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(40),
                              elevation: 5,
                            ),
                            onPressed: () => counter
                                .changeBackgroundColor(Colors.blue[200]!),
                            child: const Icon(
                              Icons.color_lens,
                              size: 30,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink[200],
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(40),
                              elevation: 5,
                            ),
                            onPressed: () => counter
                                .changeBackgroundColor(Colors.pink[200]!),
                            child: const Icon(
                              Icons.color_lens,
                              size: 30,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.brown[300],
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(40),
                              elevation: 5,
                            ),
                            onPressed: () => counter
                                .changeBackgroundColor(Colors.brown[300]!),
                            child: const Icon(
                              Icons.color_lens,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
        );
      },
    );
  }
}
