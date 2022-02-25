import 'package:flutter/material.dart';
import 'package:flutter_todo_app/screens/taskScreen.dart';
import 'package:flutter_todo_app/task.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TodoList>(
      create: (context) => TodoList(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskScreen(),
      ),
    );
  }
}
