import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController _NohpController = TextEditingController();
  FocusNode? myFocusNode;
  //bool visibilityTag = false;
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
      /*if (field == "tag"){
        visibilityTag = visibility;
      }*/
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
      resizeToAvoidBottomInset: false,
      body: Container(

        alignment: Alignment.topCenter,
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 70.0),
                    child:
                    Image.asset(
                      'assets/images/otp.png',
                      width: 200,
                      height: 140,
                    ),
                  ),
                  Column(
                    children:<Widget>[
                      SizedBox(height: 30),
                      Text(
                        'Selamat ' + greeting() + ' \nSilakan Login ke akun Ngetop-Up',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 18,fontFamily: 'Urbanist' ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'We will send  you a one time password\n to your registered mobile number',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey, fontSize: 16,fontFamily: 'Urbanist Regular' ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
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
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
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
                  )
                ],
              ),


              Container(
                margin: const EdgeInsets.only(top: 20.0, bottom: 30.0),
                padding: const EdgeInsets.only(left: 0.0, right: 0.0),
                height: 50,
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: FlatButton(
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                        height: 60,
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
              new Container(
                  margin: new EdgeInsets.only(left: 16.0, right: 16.0),
                  child: new Column(
                    children: <Widget>[
                      visibilityObs ? new Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          new Expanded(
                            flex: 11,
                            child: new Text(
                              "Ngetop-up versi 1.0.A 2022", textAlign: TextAlign.center,
                            )
                          ),
                          new Expanded(
                            flex: 1,
                            child: new IconButton(
                              color: Colors.grey[400],
                              icon: const Icon(Icons.cancel, size: 15.0,),
                              onPressed: () {
                                _changed(false, "obs");
                              },
                            ),
                          ),
                        ],
                      ) : new Container(),
                    ],
                  )
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new InkWell(
                      onTap: () {
                        visibilityObs ? null : _changed(true, "obs");
                      },
                      child: new Container(
                        margin: new EdgeInsets.only(top: 16.0),
                        child: new Column(
                          children: <Widget>[
                            new Icon(Icons.android, color: visibilityObs ? Colors.grey[400] : Colors.grey[600]),
                            new Container(
                              margin: const EdgeInsets.only(top: 8.0),
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
                  new SizedBox(width: 24.0),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
