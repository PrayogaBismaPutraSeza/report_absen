import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() => _loginScreenState();
}

TextEditingController usernameTextEditingController =
    new TextEditingController();
TextEditingController passwordTextEditingController =
    new TextEditingController();

class _loginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          title: Text(
            "Login",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.lightBlue[900]),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[200],
          height: MediaQuery.of(context).size.height - 100,
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Spacer(),
                Container(
                  width: 100,
                  height: 100,
                  child: Image.asset('/images/logo1.png'),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                      "Selamat Datang di Aplikasi Pelaporan Kendala Mesin Absensi"),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                      )),
                  child: Form(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.grey[50],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Admin",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.grey[50],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "User",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        TextFormField(
                          controller: usernameTextEditingController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'username',
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          controller: passwordTextEditingController,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'password ',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.lightBlue,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text("Login"),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            child: Text('Powered by'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset('/images/logo2.png')),
                              Container(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset('/images/logo3.png')),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
