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
                                      color: Colors.lightBlue,
                                      child: Image(
                                        image: AssetImage('asset/jurusan.jpg'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
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
                                      color: Colors.lightBlue,
                                      child: Image(
                                        image: AssetImage('asset/identitas.jpg'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
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
                                      color: Colors.lightBlue,
                                      child: Image(
                                        image: AssetImage('asset/cetak.png'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
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
                                      color: Colors.lightBlue,
                                      child: Image(
                                        image: AssetImage('asset/slip.jpg'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
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
