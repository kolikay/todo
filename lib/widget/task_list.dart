// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:todoey/widget/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: Provider.of<TaskData>(context).task[index].isDone,
            taskTitle: Provider.of<TaskData>(context).task[index].name,
            checkboxCallback: (checkBoxState) {
              // setState(() {
              //   Provider.of<TaskData>(context).task[index].toogleDone();
              // });
            });
      },
      itemCount: Provider.of<TaskData>(context).task.length,
    );
  }
}
