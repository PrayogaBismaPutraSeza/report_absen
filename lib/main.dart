import 'package:flutter/material.dart';
import 'package:report_absen/view/home.dart';
import 'package:report_absen/view/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Report',
<<<<<<< HEAD
      theme: ThemeData(primaryColor: Colors.grey),
      home: HomeScreen(),
=======
      theme: ThemeData(primaryColor: Colors.grey[100]),
      home: LoginScreen(),
>>>>>>> 9b1d7e737b3e2d8821a61d3a3a457e983664887a
    );
  }
}
