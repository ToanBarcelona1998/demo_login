import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/login_background.png"),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding:
                    EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                child: Column(
                  children: [
                    Container(
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            child: Text(
                              "Cancle",
                              style: TextStyle(color: Color(0xffcbd4e6),fontSize: 18,fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            width: double.maxFinite,
                            child: Text(
                              "Registration",
                              style: TextStyle(color: Color(0xffdde3f0),fontSize: 18,fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 40, right: 40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "MQL",
                                            style: TextStyle(
                                              fontFamily: "Roboto_Bold",
                                              fontSize: 24,
                                              color: Color(0xfffcfdfd),
                                            ),
                                          ),
                                          Text(
                                            "5",
                                            style: TextStyle(
                                              fontFamily: "Roboto_Bold",
                                              fontSize: 24,
                                              color: Color(0xfff5d72e),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(top: 10)),
                                      Text(
                                        "Join Traders Community www.mql5.com",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: "Roboto-Regular",
                                          fontSize: 22,
                                          color: Color(0xffd1dbec),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                            Padding(padding: EdgeInsets.only(top: 10)),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                children: [
                                  TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        suffixIcon: Padding(
                                          padding: const EdgeInsets.all(15),
                                          child: Text(
                                            "Enter mail",
                                            style: TextStyle(
                                                color: Color(0xffdadde0)),
                                          ),
                                        ),
                                        prefixIcon: Padding(
                                          padding: const EdgeInsets.all(15),
                                          child: Text(
                                            "Mail",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff4b4b4d)),
                                          ),
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Divider(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        suffixIcon: Padding(
                                          padding: const EdgeInsets.all(15),
                                          child: Text(
                                            "Enter pass",
                                            style: TextStyle(
                                                color: Color(0xffdadde0)),
                                          ),
                                        ),
                                        prefixIcon: Padding(
                                          padding: const EdgeInsets.all(15),
                                          child: Text(
                                            "Pass",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff4b4b4d)),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                  padding: EdgeInsets.only(top: 10, bottom: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "The password for your MQL5",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                            color: Color(0xffdfe7f3),
                                            fontFamily: "Roboto-Regular"),
                                      ),
                                      Text(
                                        " account will be sent to the specifield",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xffdfe7f3),
                                            fontFamily: "Roboto-Regular"),
                                      ),
                                      Text(
                                        "email address",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xffdfe7f3),
                                            fontFamily: "Roboto-Regular"),
                                      ),
                                    ],
                                  )),
                            ),
                            Expanded(
                              child: Container(
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  color: Color(0xfffab624),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: FlatButton(
                                  onPressed: () {},
                                  child: Text("Register",style: TextStyle(color: Color(0xff47350c),fontFamily: "Roboto_Bold"),),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "or",
                                style: TextStyle(color: Color(0xffbccbe3)),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  color: Color(0xffdee6f3),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: FlatButton(
                                  onPressed: (){},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(flex: 1,child: Image.asset("assets/images/facebook.png",height: 25,)),
                                      Expanded(flex: 3,child: Text("Continue with Facebook",style: TextStyle(color: Color(0xff5870a6),fontFamily: "Roboto_Bold"),)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(flex: 1,child: Container()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
