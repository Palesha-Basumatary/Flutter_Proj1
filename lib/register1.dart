import 'package:flutter/material.dart';
import 'package:hello/display.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String gender = 'Female';
  int id = 1;

  TextEditingController fnamecontroller = TextEditingController();
  TextEditingController lnamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController locationcontroller = TextEditingController();
  TextEditingController nationcontroller = TextEditingController();

  bool _validate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFFeeaeca),
          elevation: 0,
          title: Text('Register',
              style: TextStyle(
                  fontSize: 26,
                  fontFamily: 'PT Serif',
                  fontWeight: FontWeight.w700)),
        ),
        body: SingleChildScrollView(
            child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color(0xFFeeaeca),
                Color(0xFF94bbe9),
              ])),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: fnamecontroller,
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(14),
                    ),
                  ),
                  filled: _validate,
                  fillColor: Colors.transparent,
                  labelText: 'Enter Your First Name',
                  errorText: _validate ? 'Value Can\'t Be Empty' : null,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: lnamecontroller,
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(14),
                    ),
                  ),
                  filled: _validate,
                  fillColor: Colors.transparent,
                  labelText: 'Enter Your Last Name',
                  errorText: _validate ? 'Value Can\'t Be Empty' : null,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: emailcontroller,
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(14),
                    ),
                  ),
                  filled: _validate,
                  fillColor: Colors.transparent,
                  labelText: 'Enter Your Email',
                  errorText: _validate ? 'Value Can\'t Be Empty' : null,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: phonecontroller,
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(14),
                    ),
                  ),
                  filled: _validate,
                  fillColor: Colors.transparent,
                  labelText: 'Enter Your Phone',
                  errorText: _validate ? 'Value Can\'t Be Empty' : null,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: locationcontroller,
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(14),
                    ),
                  ),
                  filled: _validate,
                  fillColor: Colors.transparent,
                  labelText: 'Enter Your location',
                  errorText: _validate ? 'Value Can\'t Be Empty' : null,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Radio(
                    value: 1,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        gender = 'Female';
                        id = 1;
                      });
                    },
                  ),
                  Text(
                    'Female',
                    style: new TextStyle(fontSize: 17.0),
                  ),
                  Radio(
                    value: 2,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        gender = 'Male';
                        id = 2;
                      });
                    },
                  ),
                  Text(
                    'Male',
                    style: new TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  Radio(
                    value: 3,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        gender = 'Other';
                        id = 3;
                      });
                    },
                  ),
                  Text(
                    'Other',
                    style: new TextStyle(fontSize: 17.0),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: nationcontroller,
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(14),
                    ),
                  ),
                  filled: _validate,
                  fillColor: Colors.transparent,
                  labelText: 'Enter Your Nationality',
                  errorText: _validate ? 'Value Can\'t Be Empty' : null,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                minWidth: 200,
                height: 40,
                onPressed: () {
                  setState(() {
                    if (fnamecontroller.text.isEmpty &
                        lnamecontroller.text.isEmpty &
                        emailcontroller.text.isEmpty &
                        phonecontroller.text.isEmpty &
                        locationcontroller.text.isEmpty &
                        nationcontroller.text.isEmpty) {
                      _validate = true;
                    } else {
                      _validate = false;
                    }
                  });
                  if (_validate == false) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => DisplayPage(
                                fname: fnamecontroller.text,
                                lname: lnamecontroller.text,
                                email: emailcontroller.text,
                                phone: phonecontroller.text,
                                location: locationcontroller.text,
                                gender: gender,
                                nationality: nationcontroller.text,
                              )),
                    );
                  }
                },
                color: Color(0xFFabb1ff),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Text(
                  "Submit",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'PT Serif',
                      fontWeight: FontWeight.w700,
                      color: Colors.black87),
                ),
              ),
              SizedBox(
                height: 168,
              ),
            ],
          ),
        )));
  }
}
