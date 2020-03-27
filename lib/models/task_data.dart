import 'package:flutter/foundation.dart';
import 'package:todoeyflutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy Eggs'),
    Task(name: 'End task 1'),
    Task(name: 'Cook something'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
