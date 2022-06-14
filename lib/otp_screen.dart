import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {


  @override
  _OtpScreenState createState() => _OtpScreenState();

}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController _NohpController = TextEditingController();
  FocusNode? myFocusNode;

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    myFocusNode?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child:
              Image.asset(
                'assets/images/otp.png',
                width: 300,
                height: 140,
              ),
      ),
              SizedBox(height: 60),
              Text(
                'Verifikasi OTP',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 32,fontFamily: 'Urbanist' ),
              ),
              SizedBox(height: 24),
              Text(
                'We will send  you a one time password\n to your registered mobile number',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 16,fontFamily: 'Urbanist Regular' ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(30.0)),
                child: TextFormField(
                  controller: _NohpController,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    labelText: "Nomor HP",
                    labelStyle: TextStyle(color: Colors.grey),
                    icon: Icon(
                      Icons.phone,
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                  ),
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (_) => myFocusNode?.requestFocus(),
                ),
              ),
              SizedBox(height: 50),
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
                          Navigator.pop(context);
                        },
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
