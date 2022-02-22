import 'package:flutter/material.dart';
import 'package:flutter_todo_app/styles.dart';
import 'package:flutter_todo_app/task.dart';
import '../widgets/tasksList.dart';

class AddTaskScreen extends StatelessWidget {
  String newTask = '';
  Function newTaskCallback;

  AddTaskScreen({required this.newTaskCallback});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 30.0,
        ),
        Text(
          'Add Task',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: s_MAIN_COLOR,
          ),
        ),
        TextField(
          autofocus: true,
          textAlign: TextAlign.center,
          onChanged: (value) {
            newTask = value;
          },
        ),
        TextButton(
          onPressed: () {
            newTaskCallback(newTask);
            Navigator.pop(context);
          },
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(s_MAIN_COLOR),
          ),
          child: Text(
            'Save',
            style: TextStyle(fontSize: 20.0),
          ),
        )
      ],
    );
  }
}
