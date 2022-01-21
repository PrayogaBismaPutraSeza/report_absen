import 'package:flutter/material.dart';
import 'package:report_absen/view/home.dart';
import 'package:report_absen/view/login_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({ Key? key }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedNavbar = 0;

  final List<Widget> _widgetOptions = [
    HomeScreen(),
    LoginScreen(),
  ];

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _widgetOptions[_selectedNavbar],
        bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hourglass_empty_rounded),
            title: Text('Status'),
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.lightBlue[900],
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}