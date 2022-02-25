import 'package:flutter/material.dart';
import 'package:flutter_todo_app/styles.dart';
import 'package:flutter_todo_app/widgets/tasksList.dart';
import 'addTaskScreen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todo_app/task.dart';

class TaskScreen extends StatelessWidget {
  void showModal(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) => SingleChildScrollView(
        child: Container(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: AddTaskScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: s_MAIN_COLOR,
      floatingActionButton: FloatingActionButton.small(
        onPressed: () => showModal(context),
        child: Icon(Icons.add),
        backgroundColor: s_MAIN_COLOR,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => showModal(context),
            child: Container(
              padding: EdgeInsets.only(
                top: 60.0,
                left: 30.0,
                right: 30.0,
                bottom: 30.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 30.0,
                      color: s_MAIN_COLOR,
                    ),
                    radius: 30.0,
                    backgroundColor: s_LIGHT_COLOR,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'To-Do',
                    style: TextStyle(
                      color: s_LIGHT_COLOR,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '${Provider.of<TodoList>(context).getLength()} Tasks',
                    style: TextStyle(
                      color: s_ACCENT_COLOR,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                color: s_LIGHT_COLOR,
              ),
              child: TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}
