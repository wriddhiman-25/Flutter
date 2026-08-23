import 'package:flutter/material.dart'; 

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int level = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text("Profile", style: TextStyle(fontWeight: FontWeight.bold)),
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          toolbarHeight: 100,
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              tooltip: "Search",
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              tooltip: "Menu",
              onPressed: () {},
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              level += 1;
            });
          },
          backgroundColor: Colors.grey,
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
            NavigationDestination(
              icon: Icon(Icons.notifications),
              label: 'Notification',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('Assets/spi2.jpg'),
                ),
              ),
              Divider(height: 60.0, color: Colors.grey),
              Row(
                children: [
                  Icon(Icons.person, color: Colors.grey),
                  SizedBox(width: 10),
                  Text(
                    'NAME',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Wriddhiman Dey',
                style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.mail, color: Colors.grey),
                  SizedBox(width: 10),
                  Text(
                    'EMAIL',
                    style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'wriddhiman25@gmail.com',
                style: TextStyle(
                  color: Colors.amber,
                  letterSpacing: 2.0,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.grade, color: Colors.grey),
                  SizedBox(width: 10),
                  Text(
                    'LEVEL',
                    style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                '$level',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
