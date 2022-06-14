import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {


  @override
  _OtpScreenState createState() => _OtpScreenState();

}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController _NohpController = TextEditingController();
  FocusNode? myFocusNode;

  /*@override
  void validate(String? value){
    if(value.length> 0){
      return 'tidak boleh kosong';
    }

  }*/

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
            ],
          ),
        ),
      ),
    );
  }
}
