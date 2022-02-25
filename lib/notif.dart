import 'package:flutter/material.dart';

class notifPage extends StatefulWidget {
  @override
  _notifPageState createState() => _notifPageState();
}

class _notifPageState extends State<notifPage> {
  final List notifikasi = [
    "Lampirkan Slip Pembayarannya",
    "Cetak Kartu Pesertanya",
    "Pilih Jurusannya",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.lightBlue,
              Colors.white
            ],
          ),
        ),
        child: Container(
          child: Column(children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.only(top: 0.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text(
                      'NOTIFIKASI',
                      style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.all(15),
                      color: Colors.lightBlue,
                      shadowColor: Colors.black,
                      child: ListTile(
                        contentPadding: EdgeInsets.all(20),
                        title: Text(
                          notifikasi[index],
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('Hallo pejuang tekhnik, silahkan ' + notifikasi[index] + ' ya...'),
                        leading: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.black,
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: notifikasi.length,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
