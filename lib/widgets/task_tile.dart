import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskName;
  final bool isChecked;
  final Function checkBoxCallBack;

  TaskTile({this.taskName, this.isChecked, this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}
