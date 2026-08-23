import 'package:flutter/material.dart';

class notification extends StatelessWidget {
  const notification({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0,0.0),
          child:Container(
            color: Colors.amber,
            child: Text('You have 3 notifications '),
          ),
        ),
      ),
    );
  }
}
