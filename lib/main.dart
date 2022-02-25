import 'package:brotherhood_cafe/home.dart';
import 'package:brotherhood_cafe/menu.dart';
import 'package:flutter/material.dart';

class Registrasi extends StatefulWidget {
  @override
  State<Registrasi> createState() => _Registrasi();
}

class _Registrasi extends State<Registrasi> {
  String name = 'rizki';
  String nomor = '10';
  String alert = 'Masukkan data dibawah!';

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  TextEditingController nameInput = TextEditingController();
  TextEditingController nomorInput = TextEditingController();

  void prosesRegistrasi() {
    if (_formkey.currentState!.validate()) {
      if (nameInput.text == name && nomorInput.text == nomor) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => homePage()));
      }
    } else {
      setState(() {
        alert = 'Tolong masukkan data anda!';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        color: Colors.orangeAccent[400],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle),
              child: Center(
                child: Icon(
                  Icons.person,
                  size: 90,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text('Selamat datang di Brotherhood Cafe!', style: TextStyle(fontSize: 20, color: Colors.black)),
            SizedBox(
              height: 30,
            ),
            Text(alert),
            SizedBox(
              height: 20,
            ),
            Form(
              key: _formkey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                      controller: nameInput,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Masukkan nama anda!';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                          prefixIcon: Icon(
                            Icons.person,
                            size: 40,
                            color: Colors.black,
                          ),
                          hintText: "Silahkan masukkan nama anda",
                          hintStyle: TextStyle(color: Colors.black),
                          labelText: "Nama",
                          labelStyle: TextStyle(color: Colors.black))),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: <Widget>[
                      TextFormField(
                        controller: nomorInput,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Masukkan nomor meja anda!';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                          prefixIcon: Icon(
                            Icons.chair_sharp,
                            size: 40,
                            color: Colors.black,
                          ),
                          hintText: "Silahkan masukkan nomor meja anda",
                          hintStyle: TextStyle(color: Colors.black),
                          labelText: "No. Meja",
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Card(
                        color: Colors.black,
                        elevation: 10,
                        child: Container(
                          height: 50,
                          child: InkWell(
                            splashColor: Colors.white,
                            onTap: () => prosesRegistrasi(),
                            child: Center(
                              child: Text(
                                'Next',
                                style: TextStyle(fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
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
