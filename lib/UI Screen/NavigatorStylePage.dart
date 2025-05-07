import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'MenuScreen.dart';
import 'ProfileScreen.dart';

class NavigatorStylePage extends StatefulWidget {
  const NavigatorStylePage({super.key});

  @override
  State<NavigatorStylePage> createState() => _NavigatorStylePageState();
}

class _NavigatorStylePageState extends State<NavigatorStylePage> {
  int _currenIndex = 0;
  List<Widget> _screens = [
    Homescreen(),
    Menuscreen(),
    Homescreen(),
    Profilescreen(),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: App_Bar(Api: '',),
        body: _screens[_currenIndex],
        bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.black,
            surfaceTintColor: Colors.white,

            selectedIndex: _currenIndex,
            onDestinationSelected: (index) {
              _currenIndex = index;
              setState(() {});
            },
            destinations: [
              NavigationDestination(
                icon: SizedBox(
                  width: 24,
                  height: 24,
                  child: Image.network(
                    'https://icons.veryicon.com/png/o/application/a-growth-app-orange/bottom-navigation-bar-house-jump-home.png',
                    fit: BoxFit.contain,
                  ),
                ),
                label: 'Home',
              ),
              NavigationDestination(
                icon: SizedBox(
                  width: 24,
                  height: 24,
                  child: Image.network(
                    'https://cdn-icons-png.freepik.com/512/6122/6122521.png',
                    fit: BoxFit.contain,
                  ),
                ),
                label: 'Menu',
              ),
              NavigationDestination(
                icon: SizedBox(
                  width: 24,
                  height: 24,
                  child: Image.network(
                    'https://cdn5.vectorstock.com/i/1000x1000/85/69/complete-order-icon-in-blue-style-for-any-projects-vector-35418569.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
                label: 'Order',
              ),
              NavigationDestination(
                icon: SizedBox(
                  width: 24,
                  height: 24,
                  child: Image.network(
                    'https://images.vexels.com/media/users/3/147102/isolated/preview/082213cb0f9eabb7e6715f59ef7d322a-instagram-profile-icon.png', // Replace with a suitable URL for Complete Task
                    fit: BoxFit.contain,
                  ),
                ),
                label: 'Profile',
              ),
            ]));
  }
}
