// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class TaskTitle extends StatefulWidget {
  @override
  _TaskTitleState createState() => _TaskTitleState();
}

class _TaskTitleState extends State<TaskTitle> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('this is a task'),
      trailing: TaskCheckBox(isChecked),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  TaskCheckBox(this.checkBoxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxState,
      onChanged: (newValue) {
        // setState(() {
        //   isChecked = newValue!;
        // });
      },
    );
  }
}
