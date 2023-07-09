import 'package:flutter/material.dart';
import 'login.dart';

class Material3BottomNav extends StatefulWidget {
  const Material3BottomNav({Key? key}) : super(key: key);

  @override
  State<Material3BottomNav> createState() => _Material3BottomNavState();
}

class _Material3BottomNavState extends State<Material3BottomNav> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Column(
        children: [
          Center(
              child:
                  Text("Selected Page: ${_navBarItems[_selectedIndex].label}")),
          Container(
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      'Logout',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return SignInPage2();
                  }));
                },
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: NavigationBar(
        animationDuration: const Duration(seconds: 1),
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: _navBarItems,
      ),
    );
  }
}

const _navBarItems = [
  NavigationDestination(
    icon: Icon(Icons.home_outlined),
    selectedIcon: Icon(Icons.home_rounded),
    label: 'Home',
  ),
  NavigationDestination(
    icon: Icon(Icons.bookmark_border_outlined),
    selectedIcon: Icon(Icons.bookmark_rounded),
    label: 'Bookmarks',
  ),
  NavigationDestination(
    icon: Icon(Icons.shopping_bag_outlined),
    selectedIcon: Icon(Icons.shopping_bag),
    label: 'Cart',
  ),
  NavigationDestination(
    icon: Icon(Icons.logout_outlined),
    selectedIcon: Icon(Icons.person_rounded),
    label: 'Logout',
  ),
];
