import 'package:flutter/material.dart';
import 'package:my_app/NavigationBar/favorites_page.dart';
import 'package:my_app/NavigationBar/home_page.dart';
import 'package:my_app/NavigationBar/profile_page.dart';
import 'package:my_app/drawer/messages.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  int currentIndex = 0;

  final List<Widget> pages = [HomePage(), FavoritesPage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.grey[900],
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.grey[600]),
                child: Text(
                  'MyApp',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                iconColor: Colors.grey,
                textColor: Colors.grey,
                leading: Icon(Icons.message),
                title: Text('Messages', style: TextStyle(letterSpacing: 1.0)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MessagePage()),
                  );
                },
              ),
              ListTile(
                iconColor: Colors.grey,
                textColor: Colors.grey,
                leading: Icon(Icons.notifications),
                title: Text(
                  'Notifications',
                  style: TextStyle(letterSpacing: 1.0),
                ),
              ),
              ListTile(
                iconColor: Colors.grey,
                textColor: Colors.grey,
                leading: Icon(Icons.info),
                title: Text('About Us', style: TextStyle(letterSpacing: 1.0)),
              ),
              ListTile(
                iconColor: Colors.grey,
                textColor: Colors.grey,
                leading: Icon(Icons.settings),
                title: Text('Settings', style: TextStyle(letterSpacing: 1.0)),
              ),
              ListTile(
                iconColor: Colors.grey,
                textColor: Colors.grey,
                leading: Icon(Icons.logout),
                title: Text('Log Out', style: TextStyle(letterSpacing: 1.0)),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          title: Text(
            "My_APP",
            style: TextStyle(letterSpacing: 2.0, fontWeight: FontWeight.bold),
          ),
          foregroundColor: Colors.grey,
          backgroundColor: Colors.grey[900],
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              tooltip: 'More Options',
              onPressed: () {},
            ),
          ],
        ),
        body: pages[currentIndex],
        bottomNavigationBar: NavigationBar(
          labelTextStyle: WidgetStateProperty.all(
            TextStyle(color: Colors.grey),
          ),
          onDestinationSelected: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          selectedIndex: currentIndex,
          backgroundColor: Colors.grey[900],
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              selectedIcon: Icon(Icons.home),
            ),
            NavigationDestination(
              icon: Icon(Icons.favorite_border_outlined),
              label: 'Favorites',
              selectedIcon: Icon(Icons.favorite),
            ),
            NavigationDestination(
              icon: Icon(Icons.person_2_outlined),
              label: 'Profile',
              selectedIcon: Icon(Icons.person_2),
            ),
          ],
        ),
      ),
    );
  }
}
