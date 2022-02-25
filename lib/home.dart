import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
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
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: EdgeInsets.only(top: 0.5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle),
                      child: Center(
                        child: Icon(
                          Icons.person,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
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
              SizedBox(height: 20),
              Expanded(
                child: Container(
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 0.5, 20, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Menu Utama',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      child: Image(
                                        image: AssetImage('asset/jurusan.jpg'),
                                      ),
                                    ),
                                    Text(
                                      'Daftar',
                                    ),
                                    Text(
                                      'Jurusan',
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      child: Image(
                                        image: AssetImage('asset/identitas.jpg'),
                                      ),
                                    ),
                                    Text(
                                      'Edit',
                                    ),
                                    Text(
                                      'Identitas',
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      child: Image(
                                        image: AssetImage('asset/cetak.png'),
                                      ),
                                    ),
                                    Text(
                                      'Cetak',
                                    ),
                                    Text(
                                      'Kartu Peserta',
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      child: Image(
                                        image: AssetImage('asset/slip.jpg'),
                                      ),
                                    ),
                                    Text(
                                      'Slip',
                                    ),
                                    Text(
                                      'Pembayaran',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Informasi Terkini',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 380.0,
                              child: ListView(
                                children: [
                                  Card(
                                    margin: EdgeInsets.all(10),
                                    child: ListTile(
                                      tileColor: Colors.black,
                                      title: Text('SBMPN', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold)),
                                      subtitle: Text(
                                        'Seleksi Bersama Masuk Politeknik Negeri',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      leading: CircleAvatar(
                                        radius: 14,
                                        backgroundColor: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Center(
                                    child: Container(
                                      height: 100,
                                      width: 250,
                                      child: Image(
                                        image: AssetImage('asset/sbmpn.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Card(
                                    margin: EdgeInsets.all(10),
                                    child: ListTile(
                                      tileColor: Colors.black,
                                      title: Text('SBMPN', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold)),
                                      subtitle: Text(
                                        'Seleksi Bersama Masuk Politeknik Negeri',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      leading: CircleAvatar(
                                        radius: 14,
                                        backgroundColor: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Center(
                                    child: Container(
                                      height: 100,
                                      width: 250,
                                      child: Image(
                                        image: AssetImage('asset/sbmpn.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Card(
                                    margin: EdgeInsets.all(10),
                                    child: ListTile(
                                      tileColor: Colors.black,
                                      title: Text('SBMPN', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold)),
                                      subtitle: Text(
                                        'Seleksi Bersama Masuk Politeknik Negeri',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      leading: CircleAvatar(
                                        radius: 14,
                                        backgroundColor: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Center(
                                    child: Container(
                                      height: 100,
                                      width: 250,
                                      child: Image(
                                        image: AssetImage('asset/sbmpn.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
            ],
          ),
        ),
      ),
    );
  }
}
