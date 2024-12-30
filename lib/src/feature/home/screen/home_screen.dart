import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task4/src/feature/home/cubit/counter_cubit.dart';
import 'package:task4/src/feature/home/cubit/counter_state.dart';
import 'package:task4/src/feature/home/widget/app_bar.dart';
import 'package:task4/src/feature/home/widget/counter_row.dart';
import 'package:task4/src/feature/home/widget/custom_color_button.dart';
import 'package:task4/src/feature/home/widget/drawer.dart';
import 'package:task4/src/feature/home/widget/icon_button.dart';

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
        if (state is CounterTitleUpdate) {}
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            drawer: const MyDrawer(),
            appBar: appBar(
                backgroundColor: counter.color, appBarTitle: counter.title),
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
                    CounterRow(counter: counter),
                    const SizedBox(
                      height: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       
                        CustomButton(
                          color: counter.color,
                          onPressed: () {
                            counter.add();
                          },
                          icon: const Icon(Icons.add,size: 30), counter: counter,
                        ),
                        const SizedBox(
                      width: 100,
                    ),
                        CustomButton(
                          color: counter.color,
                          onPressed: () {
                            counter.reset();
                          },
                          
                          icon: const Icon(Icons.restart_alt_rounded,size: 30,), counter: counter,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomColorButton(
                            counter: counter,
                            btncolor: Colors.brown[300]!,
                            onPressed: () {
                              counter.colorbrown();
                            },
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                           CustomColorButton(
                            counter: counter,
                            btncolor: Colors.pink[200]!,
                            onPressed: () {
                              counter.colorpink();
                            },
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                           CustomColorButton(
                            counter: counter,
                            btncolor: Colors.blue[200]!,
                            onPressed: () {
                              counter.colorblue();
                            },
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
