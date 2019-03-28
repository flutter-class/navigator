import 'package:flutter/material.dart';
import './ui/first_screen.dart';
import './ui/second_screen.dart';

void main(){
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context) => FirstScreen(),
      '/second' : (context) => SecondScreen(),
    },)
  );
}