import 'package:flutter/material.dart';
import 'package:task4/src/feature/home/cubit/counter_cubit.dart';

class CounterRow extends StatelessWidget {
  const CounterRow({
    super.key,
    required this.counter,
  });

  final CounterCubit counter;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 200,
          height: 200,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: counter.color,
          ),
          child: Text(
            counter.count.toInt().toString(),
            style: const TextStyle(fontSize: 32,color: Colors.white),
          ),
        )
      ],
    );
  }
}