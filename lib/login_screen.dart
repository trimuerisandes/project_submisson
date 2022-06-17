import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_submisson/otp_screen.dart';
import 'package:project_submisson/signin_screen.dart';

class LoginScreen extends StatelessWidget {
  final Color? mycolor;

  LoginScreen({
    Key? key,
    this.mycolor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: new Container(
          padding: EdgeInsets.only(top:15.0, bottom: 30.0),
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: <Widget>[
              Container(
                  child:  Container(
                    padding: EdgeInsets.only(
                      top: 50.0
                    ),
                    alignment: Alignment.topCenter,
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
                padding: const EdgeInsets.only(left: 0.0, top: 0.0),
                child:
                Image.asset(
                  'assets/images/Frame.png',
                  width: 600,
                  height: 240,
                ),
              ),
              Column(
                children:<Widget>[
              Container(
                alignment: AlignmentDirectional.bottomEnd,
                margin: const EdgeInsets.only(top: 00.0),
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    new Expanded(
                      child: FlatButton(
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                        splashColor: this.mycolor,
                        color: this.mycolor,
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
                            return SigninScreen();
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
                        splashColor: this.mycolor,
                        color: this.mycolor,
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
            ],
          ),
        ),
      ),
    );
  }
}

