import 'package:flutter/cupertino.dart';
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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/login_background.png"),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: Stack(
                children: [
                  Positioned(
                      left: 8,
                      child: Text(
                        "Cancle",
                        style: TextStyle(
                          color: Color(0xffd2dae6),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Registration",
                      style: TextStyle(
                          color: Color(0xffdce3f0),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Roboto-Regular"),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 40, right: 40,),
                child: Center(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.zero,
                    child: Column(
                      children: [
                        RichText(text: TextSpan(
                          children: [
                            TextSpan(
                              text: "MQL",
                              style: TextStyle(
                                fontSize: 26,
                                fontFamily: "Roboto_Bold",
                                color: Color(0xfffdfefe),
                                fontWeight: FontWeight.w900
                              ),
                            ),
                            TextSpan(
                              text: "5",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 29,
                                fontFamily: "Roboto-Regular",
                                color: Color(0xffefd335),
                              ),
                            ),
                          ]
                        )),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Join Traders Community www.mql5.com",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xffdde5f1),
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              fontFamily: " Roboto-Regular"),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(15),
                                    border: InputBorder.none,
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: Text(
                                        "Enter mail",
                                        style:
                                            TextStyle(color: Color(0xffdadde0)),
                                      ),
                                    ),
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: Text(
                                        "Mail",
                                        style: TextStyle(
                                            fontSize: 16,
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
                                    contentPadding: EdgeInsets.all(15),
                                    border: InputBorder.none,
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: Text(
                                        "Enter pass",
                                        style:
                                            TextStyle(color: Color(0xffdadde0)),
                                      ),
                                    ),
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: Text(
                                        "Pass",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff4b4b4d)),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("The password for your MQL5 account will be sent to the specifield email address",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffccd8ea),
                        ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xfffab624),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: FlatButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  color: Color(0xff271d08),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "or",
                          style:
                              TextStyle(color: Color(0xffbccbe3), fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color(0xffdee6f3),
                          ),
                          child: FlatButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/facebook.png",height: 25,width: 20,),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Continue with Facebook",
                                  style: TextStyle(
                                      color: Color(0xff516ba3),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
