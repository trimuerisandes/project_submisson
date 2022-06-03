import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_submisson/otp_screen.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: new Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: <Widget>[
              Container(
                  child:  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 50.0, bottom: 0.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Selamat Datang",
                          style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold,fontFamily: 'Urbanist', color: Colors.black),
                        ),
                        Text(
                          "Masuk atau buat akun baru!",
                          style: TextStyle(fontSize: 16.0,fontFamily: 'Urbanist Regular', fontWeight: FontWeight.w100, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0, top: 100.0),
                child:
                Image.asset(
                  'assets/images/Frame.png',
                  width: 600,
                  height: 240,
                ),
              ),
              Container(
                alignment: AlignmentDirectional.bottomEnd,
                margin: const EdgeInsets.only(top: 100.0),
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: FlatButton(
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                        splashColor: Colors.mycolor,
                        color: Colors.mycolor,
                        height: 50,
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                                "Masuk",
                                style: TextStyle(color: Colors.white, fontFamily: 'Urbanist Regular'),
                              ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return OtpScreen();
                          }));
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: AlignmentDirectional.bottomEnd,
                margin: const EdgeInsets.only(top: 10.0),
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: FlatButton(
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                        splashColor: Colors.mycolor,
                        color: Colors.mycolor,
                        height: 50,
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Nggak ada akun? Daftar!",
                              style: TextStyle(color: Colors.white, fontFamily: 'Urbanist Regular'),
                            ),
                          ],
                        ),
                        onPressed: () => {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

