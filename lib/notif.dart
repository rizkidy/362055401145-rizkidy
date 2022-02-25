import 'package:flutter/material.dart';

class notifPage extends StatefulWidget {
  @override
  _notifPageState createState() => _notifPageState();
}

class _notifPageState extends State<notifPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 20),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                'RIZKI DWI YULIANTO',
                style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                '362055401145',
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
