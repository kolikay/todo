// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:todoey/widget/task_tile.dart';
import 'package:todoey/models/task.dart';

class TaskList extends StatelessWidget {
 final List<Task> task = [
   Task(name: 'bay bread'),
   Task(name: 'buy milk'),
   Task(name: 'buy food')
 ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
     TaskTile(isChecked: task[0].isDone, taskTitle: task[0].name),
     TaskTile(isChecked: task[1].isDone, taskTitle: task[1].name),
     TaskTile(isChecked: task[2].isDone, taskTitle: task[2].name),
      ],
    );
  }
}
