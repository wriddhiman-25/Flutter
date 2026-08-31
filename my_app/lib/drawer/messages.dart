import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Messages'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.grey,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 40.0, 30.0, 0.0),
        child: ListView(
          children: [
            Container(
              width: 500,
              color: Colors.grey,
              child: Row(
                children: [
                  CircleAvatar(radius: 20, child: Icon(Icons.person)),
                  SizedBox(width: 20),
                  Text('User 1', style: TextStyle(fontSize: 15)),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 500,
              color: Colors.grey,
              child: Row(
                children: [
                  CircleAvatar(radius: 20, child: Icon(Icons.person)),
                  SizedBox(width: 20),
                  Text('User 2', style: TextStyle(fontSize: 15)),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 500,
              color: Colors.grey,
              child: Row(
                children: [
                  CircleAvatar(radius: 20, child: Icon(Icons.person)),
                  SizedBox(width: 20),
                  Text('User 3', style: TextStyle(fontSize: 15)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
