// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:todoey/widget/task_tile.dart';
import 'package:todoey/models/task.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  final List<Task> task = [
    Task(name: 'bay bread'),
    Task(name: 'buy milk'),
    Task(name: 'buy food')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: task[index].isDone,
            taskTitle: task[index].name,
            checkboxCallback:(checkBoxState) {
              setState(() {
                task[index].toogleDone();
              });
            });
      },
      itemCount: task.length,
    );
  }
}
