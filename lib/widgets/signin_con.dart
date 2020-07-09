import 'package:flutter/material.dart';

import 'login_button.dart';
import 'standard_formfield.dart';

class SignInCon extends StatefulWidget {
  @override
  _SignInConState createState() => _SignInConState();
}

class _SignInConState extends State<SignInCon> {
  bool isSecure = true;

  void passwordIsSecure() {
    setState(() {
      isSecure = !isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
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
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
              obscureText: isSecure == true ? true : false,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.black)),
                hintText: 'ادخل كلمه المرور',
                hintStyle: TextStyle(
                    fontSize: 16.0,
                    color: Color(0xff9E224D),
                    fontFamily: 'cairo'),
                prefixIcon: IconButton(
                  onPressed: passwordIsSecure,
                  icon: Icon(
                    isSecure == true
                        ? Icons.visibility_off
                        : Icons.remove_red_eye,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 230, top: 20),
            child: Text(
              'نسيت كلمه المرور؟',
              style: TextStyle(color: Color(0xff9E224D), fontFamily: 'Cairo'),
            ),
          ),
          LoginButton(
            hintText: 'تسجيل الدخول',
          ),
          Padding(padding: EdgeInsets.only(bottom: 20))
        ],
      ),
    );
  }
}
