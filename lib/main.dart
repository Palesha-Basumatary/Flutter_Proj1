import 'package:flutter/material.dart';
import 'register1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.blue,
            appBarTheme: AppBarTheme(
                iconTheme: IconThemeData(color: Colors.black),
                foregroundColor: Colors.black87)),
        home: Container(
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Color(0xFFeeaeca),
              elevation: 0,
              title: Text('Major Project',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'PT Serif',
                      fontWeight: FontWeight.w700)),
            ),
            body: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                      Color(0xFFeeaeca),
                      Color(0xFF94bbe9),
                      //Color(0xFFfcb045)
                    ])),
                child: Changetext()),
          ),
        ));
  }
}

class Changetext extends StatefulWidget {
  textstate createState() => textstate();
}

class textstate extends State {
  String txt = "Palesha Basumatary";

  changetext() {
    setState(() {
      if (txt == "Palesha Basumatary") {
        txt = 'Welcome to My Page';
        return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
                child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    child: Text(
                      '$txt',
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Oleo Script Swash Caps',
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    child: Text(
                      'Hello!!! This is My Major Project\n@_@',
                      style: TextStyle(
                          fontSize: 23,
                          fontFamily: 'Oleo Script Swash Caps',
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  MaterialButton(
                    minWidth: 300,
                    height: 60,
                    onPressed: () {
                      changetext();
                      Future.delayed(Duration(milliseconds: 1000), () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Register()),
                        );
                      });
                    },
                    color: Color(0xFFabb1ff),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'PT Serif',
                          fontWeight: FontWeight.w700,
                          color: Colors.black87),
                    ),
                  ),
                ],
              ),
            ))));
  }
}
