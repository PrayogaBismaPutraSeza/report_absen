import 'package:flutter/material.dart';
import 'package:report_absen/view/status_screen_admin.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({ Key? key }) : super(key: key);

  @override
  _FormScreenState createState() => _FormScreenState();
}

TextEditingController updTextEditingController = new TextEditingController();
TextEditingController keteranganTextEditingController = new TextEditingController();



class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FORM LAPORAN"), backgroundColor: Colors.lightBlue[900],),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 60),
              margin: EdgeInsets.all(50),
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
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text("UPD",style: TextStyle(color: Colors.lightBlue[900], fontWeight: FontWeight.bold, )),
                    ),
                    SizedBox(
                      height: 10,
                      
                    ),
                    TextFormField(
                      controller: updTextEditingController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'KOMINFO',
                        filled: true,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text("Upload Foto",style: TextStyle(color: Colors.lightBlue[900], fontWeight: FontWeight.bold, )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      child: new Icon(
                        Icons.add_a_photo_outlined,
                        size: 150,
                        color: Colors.lightBlue[900],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.shade100,
                        border: Border.all(
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text("Keterangan",style: TextStyle(color: Colors.lightBlue[900], fontWeight: FontWeight.bold, )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 5 * 20.0,
                      child: TextFormField(
                        maxLines: 5,
                        controller: keteranganTextEditingController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          filled: true,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 125, right: 125),
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: RaisedButton(
                onPressed: () {},
                color: Colors.lightBlue[900],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
                child: Text("LAPOR", style: TextStyle(fontSize: 17,)), textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}