import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double heightAppBar = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/login_background.png"),
                fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: heightAppBar),
                child: Stack(
                  children: [
                    Positioned(
                        left: 10,
                        child: Text(
                          "Cancle",
                          style:
                              TextStyle(fontSize: 20, color: Color(0xffeef2f8)),
                        )),
                    Container(
                      alignment: Alignment.center,
                      width: double.maxFinite,
                      child: Text(
                        "Registration",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xffeef2f8)),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: height / 18),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "MQL",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "assets/fonts/Roboto-Bold.ttf",
                                    color: Color(0xfff7fafc)),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: Text(
                                "5",
                                style: TextStyle(
                                  color: Color(0xfff2d631),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          bottom: height / 18, top: height / 28),
                      alignment: Alignment.centerLeft,
                      width: width * 3 / 4,
                      child: Text(
                        "Join Traders Community www.mql5.com",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22,
                            color: Color(0xffc7d4e9),
                            fontFamily: "assets/fonts/Roboto-Regular.ttf"),
                      ),
                    ),
                    Container(
                      width: width * 3 / 4,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        children: [
                          TextField(
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(12),
                                border: InputBorder.none,
                                hintText: "Enter mail"),
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          TextField(
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter pass",
                              contentPadding: EdgeInsets.all(12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      width: width * 3 / 4,
                      alignment: Alignment.center,
                      child: Text(
                        "The password for your MQL5 account will be sent to the specifield email address",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xffbecde5),fontFamily: "assets/fonts/RobotoCondensed-Regular.ttf"),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: width * 3 / 4,
                      height: height/14,
                      child: FlatButton(
                        color: Color(0xfffab624),
                        onPressed: () {},
                        child: Text(
                          "Register",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        padding: EdgeInsets.all(5),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Or",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xffa6bad9)),
                      ),
                    ),
                    Container(
                      height: height/14,
                      width: width * 3 / 4,
                      child: FlatButton(
                        color: Color(0xffdee6f3),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Image.asset(
                                "assets/images/facebook.png",
                                height: 20,
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              child: Text(
                                "Continue with Facebook",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.all(5),
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
