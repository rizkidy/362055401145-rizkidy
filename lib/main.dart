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
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Positioned(
              top: 180,
              left: 120,
              child: CircleAvatar(
                radius: 75,
                backgroundImage: NetworkImage('https://www.google.com/search?q=logo+poliwangi&sxsrf=APq-WBsd6rOAldvCBDglfEJJFouxg45D-Q:1645771604882&tbm=isch&source=iu&ictx=1&vet=1&fir=xIR17ae-4vP1JM%252Cnaq2xMdXjv5jxM%252C_%253BPg78AcsVLusm8M%252CoAhAbwxHYMyN7M%252C_%253BrKsq3rdHuCSIFM%252CoAhAbwxHYMyN7M%252C_%253BX34kdS2fnnDJ5M%252CLGLuiyp3ZZqMBM%252C_%253BtRxSiKEj0U2W-M%252CSP7oBz5f3ilBjM%252C_%253B28dIMJn7j7KEvM%252CSYTE5hR01J5MiM%252C_%253BERlZn5smvCRuhM%252CU2W-5_yLx9_X1M%252C_%253BylmgqBngsqbAtM%252CZv8hZoWmUkKRfM%252C_%253B_Sk9yUZr3claQM%252CnNNjLz796OUo5M%252C_%253Bz6Q8oai2yPSSRM%252C3C3NzVwGz6CDRM%252C_%253B2tLGZlQMlVLc6M%252CoAhAbwxHYMyN7M%252C_%253BPmSSMDVqWc7B8M%252C2bxtWftqMLJ-PM%252C_%253BFabb8c2CWP5aKM%252Cr69oHbYEO8VLcM%252C_%253BNiZ00mf0vHGYcM%252CPsAWVziCbVF8RM%252C_&usg=AI4_-kSnebHXo4Z3ntbJXmCbVXadV5M3ug&sa=X&sqi=2&ved=2ahUKEwizrY__oJr2AhUDG7kGHT-1DLYQ9QF6BAgMEAE#imgrc=X34kdS2fnnDJ5M'),
              ),
            ),
            Positioned(
              top: 340,
              left: 75,
              child: Text(
                'SELAMAT DATANG',
                style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        // child: Form(
        //       key: _formKey,
        //       child: Column(
        //         children: <Widget>[
        //           TextFormField(
        //               validator: (value) {
        //                 if (value!.isEmpty) {
        //                   return 'Masukkan nomor peserta anda!';
        //                 }
        //               },
        //           )
        //         ]
        //           )
        //       ),
      ),
    );
  }
}
