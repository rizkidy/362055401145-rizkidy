import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'Project UTS', debugShowCheckedModeBanner: false, theme: ThemeData(primarySwatch: Colors.green), home: loginPage()));
}

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(shape: BoxShape.rectangle),
              child: Center(
                child: Image(
                  image: AssetImage('asset/logo.jpg'),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'SELAMAT DATANG',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
