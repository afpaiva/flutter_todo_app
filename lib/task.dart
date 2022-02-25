import 'package:flutter/foundation.dart';

class TodoList extends ChangeNotifier {
  final List<Map> _tasks = [];

  int getLength() {
    return _tasks.length;
  }

  void addNewTask(String title) {
    _tasks.add({'name': title, 'isDone': false});
    notifyListeners();
  }

  void markAsDone(int index) {
    _tasks[index]['isDone'] = !_tasks[index]['isDone'];
    notifyListeners();
  }

  void removeTask(int index) {
    Map toDelete = _tasks[index];
    _tasks.remove(toDelete);
    notifyListeners();
  }

  List tasks() {
    return _tasks;
  }
}
