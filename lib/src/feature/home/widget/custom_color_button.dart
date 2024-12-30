import 'package:flutter/material.dart';
import 'package:task4/src/feature/home/cubit/counter_cubit.dart';

class CustomColorButton extends StatelessWidget {
  const CustomColorButton({
    super.key,
    required this.counter,required this.onPressed, required this.btncolor,
  });

  final CounterCubit counter;
  final void Function() onPressed;
  final Color btncolor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor:btncolor,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(40),
        elevation: 5,
      ),
      onPressed:onPressed,
      child: const Icon(
        Icons.color_lens,
        size: 30,
      ),
    );
  }
}
