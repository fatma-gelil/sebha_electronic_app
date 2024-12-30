import 'package:flutter/material.dart';
import 'package:task4/src/feature/home/cubit/counter_cubit.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.icon,
      required this.onPressed,
      required this.counter, required Color color});

  final CounterCubit counter;
  final void Function()? onPressed;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: counter.color,
        backgroundColor: Colors.white,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(40),
        elevation: 5,
      ),
      onPressed: onPressed,
      child: icon,
    );
  }
}
