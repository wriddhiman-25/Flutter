import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        toolbarHeight: 100,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 30.0, 30.0, 0.0),
        child: Container(
          color: Colors.amber,
          child: Text('You have 3 notifications '),
        ),
      ),
    );
  }
}
