import 'package:flutter/material.dart';
import 'package:report_absen/view/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Report',
      theme: ThemeData(primaryColor: Colors.grey[100]),
      home: LoginScreen(),
    );
  }
}
