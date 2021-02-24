import 'package:demo_login/size_config.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/login_background.png"),
                  fit: BoxFit.fill)),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                child: Container(
                  height: SizeConfig.blockVertical * 4,
                  width: SizeConfig.screenWidth,
                  margin: EdgeInsets.only(top: SizeConfig.heightSafe),
                  child: Stack(
                    children: [
                      Positioned(
                        left: SizeConfig.blockHorizontal,
                        child: Container(
                          padding: EdgeInsets.all(4),
                          child: Text(
                            "Cancle",
                            style: TextStyle(
                                fontFamily: "Roboto-Regular",
                                color: Color(0xffdce3f0),
                                fontSize: SizeConfig.safeBlockHorizontal * 5),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Registration",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Bold",
                              color: Color(0xffdce3f0),
                              fontSize: SizeConfig.safeBlockHorizontal * 5),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: SizeConfig.screenHeight -
                    SizeConfig.heightSafe -
                    SizeConfig.blockVertical * 4,
                width: SizeConfig.screenWidth,
                margin: EdgeInsets.only(
                    top: SizeConfig.heightSafe + SizeConfig.blockVertical * 4),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: SizeConfig.safeBlockHorizontal * 16,
                            right: SizeConfig.safeBlockHorizontal * 16),
                        height: SizeConfig.blockVertical * 20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "MQL",
                                  style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    color: Color(0xfff6f8fc),
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 7,
                                  ),
                                ),
                                Text(
                                  "5",
                                  style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    color: Color(0xfff6d82e),
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 8,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Join Traders Community www.mql5.com",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Roboto-Regular",
                                color: Color(0xfff5f7fb),
                                fontSize: SizeConfig.safeBlockHorizontal * 6,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(
                                SizeConfig.blockHorizontal)),
                        margin: EdgeInsets.only(
                            left: SizeConfig.safeBlockHorizontal * 16,
                            right: SizeConfig.safeBlockHorizontal * 16),
                        //height: SizeConfig.blockVertical * 20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextField(
                              textAlign: TextAlign.right,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter mail".toLowerCase(),
                                  contentPadding: EdgeInsets.all(
                                      SizeConfig.blockHorizontal * 2),
                                  hintStyle: TextStyle(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 5,
                                    color: Color(0xffe4e6e8),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(
                                  SizeConfig.blockHorizontal * 2),
                              child: Divider(
                                color: Colors.grey,
                              ),
                            ),
                            TextField(
                              textAlign: TextAlign.right,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter pass".toLowerCase(),
                                  contentPadding: EdgeInsets.all(
                                      SizeConfig.blockHorizontal * 2),
                                  hintStyle: TextStyle(
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 5,
                                    color: Color(0xffe4e6e8),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal*2),
                        margin: EdgeInsets.only(
                            left: SizeConfig.safeBlockHorizontal * 16,
                            right: SizeConfig.safeBlockHorizontal * 16),
                        height: SizeConfig.blockVertical * 12,
                        alignment: Alignment.center,
                        child: Text(
                          "The password for your MQL5 account will be sent to the specifield email address",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                            color: Color(0xffc8d4e7),
                            fontFamily: "Roboto-Regular",
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: SizeConfig.safeBlockHorizontal * 16,
                            right: SizeConfig.safeBlockHorizontal * 16),
                        height: SizeConfig.blockVertical * 22,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: SizeConfig.blockVertical * 8,
                              width: double.maxFinite,
                              color: Color(0xfffab624),
                              child: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 4,
                                      fontFamily: "Roboto_Bold"),
                                ),
                              ),
                            ),
                            Text(
                              "or",
                              style: TextStyle(
                                  color: Color(0xffbccbe3),
                                  fontSize: SizeConfig.safeBlockHorizontal * 5),
                            ),
                            Container(
                              height: SizeConfig.blockVertical * 8,
                              color: Color(0xffdee6f3),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/facebook.png",height: SizeConfig.blockVertical*4,),
                                  Padding(padding: EdgeInsets.all(SizeConfig.blockHorizontal)),
                                  Text("Continue with Facebook",style: TextStyle(
                                      fontSize:
                                      SizeConfig.safeBlockHorizontal * 4,
                                      fontFamily: "Roboto_Bold"),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
