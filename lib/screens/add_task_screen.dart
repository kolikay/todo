// ignore_for_file: prefer_const_constructors, avoid_print, use_key_in_widget_constructors, unused_local_variable
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  Function addTaskCallBack;
  AddTaskScreen(this.addTaskCallBack);
  

  @override
  Widget build(BuildContext context) {
   late String newTaskTitle;
    return Container(
      color: const Color(0xff757575),
      child: Container(
        child: Column(children: [
          Text(
            'Add Task',
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30.0,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          TextButton(
            child: CircleAvatar(
              backgroundColor: Colors.lightBlueAccent,
              radius: 30.0,
              child: Icon(
                Icons.add,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              addTaskCallBack(newTaskTitle);
            },
          ),
        ]),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            )),
      ),
    );
  }
}
