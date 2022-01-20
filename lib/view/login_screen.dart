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
      appBar: AppBar(title: Text("Login"), backgroundColor: Colors.grey),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 100,
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height - 100,
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Spacer(),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: usernameTextEditingController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'username',
                        ),
                      ),
                      TextFormField(
                        controller: usernameTextEditingController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'username',
                        ),
                      ),
                    ],
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
                        color: Colors.white,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text("Sign In"),
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
