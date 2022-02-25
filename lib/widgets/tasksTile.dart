import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function handleCheck;
  final Function handleDelete;

  TaskTile(
      {this.title = '',
      required this.isChecked,
      required this.handleCheck,
      required this.handleDelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: () => handleDelete(),
        title: Text(
          title,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          onChanged: (value) => handleCheck(value),
          value: isChecked,
        ));
  }
}
