import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/screens/todo_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Color(0xFFf8edeb),
      ),
      home: TodoScreen(),
    );
  }
}
