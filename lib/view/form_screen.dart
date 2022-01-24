import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({ Key? key }) : super(key: key);

  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FORM LAPORAN"), backgroundColor: Colors.lightBlue[900],),
      body: Center(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 100),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.shade500,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 0.5,
                       blurRadius: 0.5,
                    )
                  ],
              ),
              child: Form(
                child: Column(
                  children: [
                    Text("UPD",style: TextStyle(color: Colors.lightBlue[900], fontWeight: FontWeight.bold, ),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}