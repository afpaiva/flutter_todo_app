class Task {
  final String name;
  bool isDone;

  Task({this.name = '', this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}

class TodoList {
  List<Task> tasks = [];

  void addNewTask(String title) {
    tasks.add(Task(isDone: false, name: title));
  }
}
