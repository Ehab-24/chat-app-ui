import 'package:flutter/material.dart';
import 'Globals.dart';
import 'Screens/Home/HomeScreen.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      title: 'My Chat UI',

      debugShowCheckedModeBanner: false,

      home: HomeScreen(),
    );
  }
}