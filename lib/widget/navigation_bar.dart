import 'package:firsrt_firebase_bscapp/folafolScreen/folafolScreen.dart';
import 'package:firsrt_firebase_bscapp/profileScreen/profile_screen.dart';
import 'package:firsrt_firebase_bscapp/screen/home_screen.dart';
import 'package:flutter/material.dart';


class NavBar extends StatefulWidget {
  @override
  _NavBar createState() =>_NavBar();
}

class _NavBar extends State<NavBar> {
  int _selectedIndex = 0; // Variable to store the current index
  final _screens = [
    HomeScreen(),
    Folascreen(),
    ProfileScreen(),
    // SettingsScreen(),
  ];

  // Function to handle the tab selection
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens [_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(

            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },


            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'হোম',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.assessment),
                label: 'ফলাফল',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'প্রোফাইল',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.apps),
                label: 'আরও',
              ),
            ]
        ),
      ),
    );
  }
}
