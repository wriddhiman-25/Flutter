import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.person),
                SizedBox(width: 5),
                Text(
                  'NAME',
                  style: TextStyle(letterSpacing: 2.0, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Wriddhiman Dey',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.amber[200],
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.email_outlined),
                SizedBox(width: 5),
                Text(
                  'EMAIL',
                  style: TextStyle(letterSpacing: 2.0, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'wriddhiman25@gmail.com',
              style: TextStyle(
                letterSpacing: 1.0,
                color: Colors.amber[200],
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.call),
                SizedBox(width: 5),
                Text(
                  'Phone No.',
                  style: TextStyle(letterSpacing: 2.0, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              '9933633255',
              style: TextStyle(
                color: Colors.amber[200],
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
