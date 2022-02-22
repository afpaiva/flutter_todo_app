import 'package:flutter/material.dart';
import 'tasksTile.dart';
import '../task.dart';

class TaskList extends StatefulWidget {
  TaskList(this.todo);
  TodoList todo;
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            title: widget.todo.tasks[index].name,
            isChecked: widget.todo.tasks[index].isDone,
            toggleDone: (value) {
              setState(() {
                widget.todo.tasks[index].toggleDone();
              });
            });
      },
      itemCount: widget.todo.tasks.length,
    );
  }
}
