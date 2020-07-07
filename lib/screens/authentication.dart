import 'package:authentication_models_screen/widgets/login_button.dart';
import 'package:authentication_models_screen/widgets/standard_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Authentication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildContent(context),
    );
  }

  Widget buildContent(BuildContext context) {
    return Center(
      child: DefaultTabController(
        length: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              //constraints: BoxConstraints(maxHeight: 150.0),
              child: TabBar(
                  unselectedLabelColor: Color(0xff9E224D),
                  indicator: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(15)),
                    color: Color(
                      (0xFFE3E3E3),
                    ),
                  ),
                  labelStyle: TextStyle(color: Colors.grey),
                  unselectedLabelStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xff9E224D)),
                  tabs: [
                    Tab(
                        child: Text(
                      "تسجيل حساب",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                        // color: Color(0xff9E224D),
                      ),
                    )),
                    Tab(
                        child: Text(
                      "تسجيل الدخول",
                      style: TextStyle(
                          //   color: Color(0xff9E224D),
                          ),
                    )),
                  ]),
            ),
            Center(
              child: Column(
                textDirection: TextDirection.rtl,
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  StandardFormField(
                    hintText: 'ادخل رقم الجوال الخاص بك',
                  ),
                  StandardFormField(
                    hintText: 'أدخل كلمه المرور الخاصه بك',
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'نسيت كلمه السر؟',
                    style: TextStyle(color: Color(0xff9E224D)),
                  ),
                  LoginButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
