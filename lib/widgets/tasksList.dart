import 'package:flutter/material.dart';
import 'package:flutter_todo_app/task.dart';
import 'tasksTile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          title: Provider.of<TodoList>(context).tasks()[index]['name'],
          isChecked: Provider.of<TodoList>(context).tasks()[index]['isDone'],
          handleCheck: (value) =>
              Provider.of<TodoList>(context, listen: false).markAsDone(index),
          handleDelete: () =>
              Provider.of<TodoList>(context, listen: false).removeTask(index),
        );
      },
      itemCount: Provider.of<TodoList>(context).getLength(),
    );
  }
}
