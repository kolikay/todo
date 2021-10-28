// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';




class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          ),
          TextButton(
            child: CircleAvatar(
              backgroundColor: Colors.lightBlueAccent,
              radius: 30.0,
              child: Icon(Icons.add,
              size: 30.0,
              color: Colors.white,),
            ),
            onPressed: () {
              //add task to list
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
