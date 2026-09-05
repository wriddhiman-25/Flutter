import 'package:demo_app/lists/todo_task.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> tasks = [
    'Practice LeetCode',
    'Finish Flutter UI',
    'Read for 20 minutes',
  ];

  final List<bool> completedTasks = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text('To Do', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.amber,
        toolbarHeight: 90,
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return TodoTask(
            taskName: tasks[index],
            isCompleted: completedTasks[index],
            onChanged: (value) {
              setState(() {
                completedTasks[index] = value ?? false;
              });
            },
          );
        },
      ),
    );
  }
}
