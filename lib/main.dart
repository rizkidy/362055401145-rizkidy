import 'package:flutter/material.dart';
import 'package:uts_rizkidy/home.dart';

import 'https://flutlab.io/root/app/lib/home.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Project UTS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => loginPage(),
        '/home': (context) => homePage(),
      },
    ),
  );
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
              height: 5.0,
            ),
            Text(
              'SELAMAT DATANG',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'Silahkan Masuk datau Daftar',
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Nomor Peserta',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Masukkan nama anda!';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Masukkan password anda!';
                      }
                      return null;
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      RaisedButton(
                        child: Text(
                          'Masuk',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.lightBlue,
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                      ),
                      RaisedButton(
                        child: Text(
                          'Daftar',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.lightBlue,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
