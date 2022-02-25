import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'Project UTS', debugShowCheckedModeBanner: false, home: homePage()));
}

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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            expandedHeight: 160.0,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('SliverAppBar'),
              background: Image(
                image: AssetImage('asset/bg.jpg'),
              ),
            ),
          ),
          BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Beranda'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                title: Text('Notifikasi'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.question_answer),
                title: Text('About'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('Akun'),
              ),
            ],
            currentIndex: _selectedNavbar,
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            onTap: _changeSelectedNavBar,
          ),
        ],
      ),
    );
  }
}
