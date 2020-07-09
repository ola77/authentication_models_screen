import 'dart:ui';

import 'package:authentication_models_screen/widgets/signin_con.dart';
import 'package:authentication_models_screen/widgets/signup_con.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'logo.dart';

class AuthSignUp extends StatefulWidget {
  @override
  _AuthSignUpState createState() => _AuthSignUpState();
}

class _AuthSignUpState extends State<AuthSignUp> {
  int _tabIndex = 0;

  bool isSecure = true;

  void passwordIsSecure() {
    setState(() {
      isSecure = !isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.85,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'أهلا بك مجددا,',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          color: Color(0xff931F47),
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                      textDirection: TextDirection.rtl,
                    ),
                    _tabIndex == 0
                        ? Text(
                            'سجل حساب جديد وتابع العروض',
                            style: TextStyle(
                                fontFamily: 'Cairo', color: Color(0xff931F47)),
                            textDirection: TextDirection.rtl,
                          )
                        : Text(
                            'سجل الدخول وتابع العروض',
                            style: TextStyle(
                                fontFamily: 'Cairo', color: Color(0xff931F47)),
                            textDirection: TextDirection.rtl,
                          ),
                  ],
                ),
                Text(
                  '|',
                  textScaleFactor: 5,
                  style: TextStyle(
                    color: Color(0xff931F47),
                  ),
                ),
                Container(
                  height: 60.0,
                  child: OrderizrLogo(
                    placement: LogoPlacement.language,
                  ),
                ),
              ],
            ),
          ),
          DefaultTabController(
            length: 2,
            initialIndex: _tabIndex,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  padding:
                      EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                  //constraints: BoxConstraints(maxHeight: 150.0),
                  child: TabBar(
                      onTap: (index) {
                        setState(() {
                          _tabIndex = index;
                        });
                      },
                      indicator: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0.0, 0.3),
                          )
                        ],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                        ),
                        color: Colors.white,
                      ),
                      tabs: [
                        Tab(
                            child: Text(
                          "تسجيل حساب",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Cairo',
                              color: _tabIndex == 0
                                  ? Color(0xff9E224D)
                                  : Color(0xff868992)),
                        )),
                        Tab(
                            child: Text(
                          "تسجيل الدخول",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Cairo',
                              color: _tabIndex == 0
                                  ? Color(0xff868992)
                                  : Color(0xff9E224D)),
                        )),
                      ]),
                ),
                _tabIndex == 0 ? SignUpCon() : SignInCon(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
