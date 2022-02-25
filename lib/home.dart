import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 75.0,
            ),
            Text(
              'RIZKI DWI YULIANTO',
              style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              '362055401145',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            // bottomNavigationBar: BottomNavigationBar(
            //   items: const <BottomNavigationBarItem>[
            //     BottomNavigationBarItem(
            //       icon: Icon(Icons.home),
            //       title: Text('Beranda'),
            //     ),
            //     BottomNavigationBarItem(
            //       icon: Icon(Icons.notifications),
            //       title: Text('Notifikasi'),
            //     ),
            //     BottomNavigationBarItem(
            //       icon: Icon(Icons.query_builder),
            //       title: Text('About'),
            //     ),
            //     BottomNavigationBarItem(
            //       icon: Icon(Icons.person),
            //       title: Text('Akun'),
            //     ),
            //   ],
            //   currentIndex: _selectedNavbar,
            //   selectedItemColor: Colors.green,
            //   unselectedItemColor: Colors.grey,
            //   showUnselectedLabels: true,
            //   onTap: _changeSelectedNavBar,
            // ),
          ],
        ),
      ),
    );
  }
}
