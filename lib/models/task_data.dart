import 'package:flutter/foundation.dart';
import 'package:checklist/models/task.dart';
import 'dart:collection';


class Task_Data extends ChangeNotifier {

  List<Task> _tasks = [Task(name:"pencil")
    ,Task(name:"tea"),
    Task(name: "bread"),
  ];

  int get taskcount => _tasks.length;

  List<Task> get taksList => _tasks;

  void addTask(String taskname){
    final task = Task(name: taskname);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){

    _tasks.remove(task);
    notifyListeners();
  }

}