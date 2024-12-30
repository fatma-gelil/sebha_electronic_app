import 'package:flutter/material.dart';

AppBar appBar({required backgroundColor,required appBarTitle}) {

  return AppBar(
    backgroundColor:backgroundColor,
    centerTitle: true,
    title: Text(appBarTitle!,
        style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold,color: Colors.white)),
  );

}
