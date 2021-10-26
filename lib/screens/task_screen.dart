// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        padding: const EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0 ),
        child: Column(
          children: [
           const Icon(Icons.list),
           const Text('Todoey'),
          ],
        ),
      ),
    );
  }
}
