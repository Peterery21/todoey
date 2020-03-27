import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/task_data.dart';
import 'package:todoeyflutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskName: taskData.tasks[index].name,
            isChecked: taskData.tasks[index].isDone,
            checkBoxCallBack: (valueChecked) {
//            setState(() {
//              widget.tasks[index].toggleDone();
//            });
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
