import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function toggleDone;

  TaskTile(
      {this.title = '', required this.isChecked, required this.toggleDone});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          title,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          onChanged: (value) => toggleDone(value),
          value: isChecked,
        ));
  }
}
