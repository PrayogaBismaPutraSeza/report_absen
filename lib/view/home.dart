import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:report_absen/view/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedNavbar = 0;

  final _widgetOptions = [
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
      appBar: AppBar(title: Text("HOME"), backgroundColor: Colors.lightBlue[900],),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Container(
                 width: 195,
                 height: 195,
                 child: RaisedButton(
                    onPressed: () {},
                    color: Colors.lightBlue[900],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    child: Text("LAPOR", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)), textColor: Colors.white,
                  ),
               ),
            ],
          ),
        ),
      ),
      
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