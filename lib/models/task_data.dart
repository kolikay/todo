import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> task = [
    Task(name: 'bay bread'),
    Task(name: 'buy milk'),
    Task(name: 'buy food')
  ];
}
