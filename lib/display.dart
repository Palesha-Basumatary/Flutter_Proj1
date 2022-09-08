import 'package:flutter/material.dart';

class DisplayPage extends StatelessWidget {
  String fname = '';
  String lname = '';
  String email = '';
  String phone = '';
  String location = '';
  String gender = '';
  String nationality = '';

  DisplayPage(
      {required this.fname,
      required this.lname,
      required this.email,
      required this.phone,
      required this.location,
      required this.gender,
      required this.nationality});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFFeeaeca),
          elevation: 0,
          title: Text('Display',
              style: TextStyle(
                  fontSize: 26,
                  fontFamily: 'PT Serif',
                  fontWeight: FontWeight.w700))),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color(0xFFeeaeca),
              Color(0xFF94bbe9),
            ])),
        child: Center(
            child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                '$fname',
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Oleo Script Swash Caps',
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                '$lname',
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Oleo Script Swash Caps',
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                '$email',
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Oleo Script Swash Caps',
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                '$phone',
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Oleo Script Swash Caps',
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                '$location',
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Oleo Script Swash Caps',
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                '$gender',
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Oleo Script Swash Caps',
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                '$nationality',
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Oleo Script Swash Caps',
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
