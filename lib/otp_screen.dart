import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController _NohpController = TextEditingController();
  FocusNode? myFocusNode;
  bool visibilityObs = false;


  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Pagi!';
    }
    if (hour < 17) {
      return 'Sore!';
    }
    return 'Malam!';
  }

  Color _containerColor = Colors.yellow;

  void _changed(bool visibility, String field) {
    setState(() {
      if (field == "obs"){
        visibilityObs = visibility;
      }
    });
  }

  void changeColor() {
    setState(() {
      if (_containerColor == Colors.yellow) {
        _containerColor = Colors.red;
        return;
      }
      _containerColor = Colors.yellow;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // resizeToAvoidBottomInset: false,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: new Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child:
                    Image.asset(
                      'assets/images/otp.png',
                      width: 100,
                      height: 60,
                    ),
                  ),
                  Row(
                    children:<Widget>[
                      SizedBox(height: 30),
                      Text(
                        'Selamat ' + greeting() + ' \nSilakan Login ke akun Ngetop-Up',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black, fontSize: 12,fontFamily: 'Urbanist' ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children:<Widget> [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: TextFormField(
                      controller: _NohpController,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.grey),
                        icon: Icon(
                          Icons.mail,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                      ),
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (_) => myFocusNode?.requestFocus(),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    margin: const EdgeInsets.only(top: 20.0, bottom: 0.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: TextFormField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.grey),
                        icon: Icon(
                          Icons.password,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                      ),
                      textInputAction: TextInputAction.next,
                      obscureText: true,
                      onFieldSubmitted: (_) => myFocusNode?.requestFocus(),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Lupa Password?',
                        style: TextStyle(color: Colors.blue, fontSize: 12,fontFamily: 'Urbanist Bold' ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: FlatButton(
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                        height: 50,
                        splashColor: Colors.white,
                        color: Colors.blue,
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            new Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Text(
                                "Masuk",
                                textAlign: TextAlign.right,
                                style: TextStyle(color: Colors.white, fontFamily: 'Urbanist Regular' ),
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          print(_NohpController.text);
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new InkWell(
                      onTap: () {
                        visibilityObs ? null : _changed(true, "obs");
                      },
                      child: new Container(
                        margin: new EdgeInsets.only(top: 0.0),
                        child: new Row(
                          children: <Widget>[
                            new Icon(Icons.android, color: visibilityObs ? Colors.grey[400] : Colors.grey[600]),
                            new Container(
                              margin: const EdgeInsets.only(top: 0.0),
                              child: new Text(
                                "Versi Aplikasi",
                                style: new TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                  color: visibilityObs ? Colors.grey[400] : Colors.grey[600],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                  ),
                  new InkWell(
                      onTap: () {
                        _changed(false, "obs");
                      },
                      child: new Container(
                        margin: new EdgeInsets.only(top: 5.0, left: 4.0),
                        child: visibilityObs ? new Row(
                          children: <Widget>[
                            new Expanded(
                              flex: 0,
                              child: new Text(
                                "Ngetop-up v.1.0.A", textAlign: TextAlign.right,
                                style: new TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                  color: visibilityObs ? Colors.grey[400] : Colors.grey[600],
                                ),
                              ),
                            ),
                          ],
                        ) : new Container(),
                      )
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
