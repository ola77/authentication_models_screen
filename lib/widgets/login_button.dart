import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String hintText;

  LoginButton({this.hintText});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(top: 100),
        width: MediaQuery.of(context).size.width * .85,
        height: MediaQuery.of(context).size.height * .09,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(256.0),
          color: Color(0xff9E224D),
        ),
        child: Center(
          child: Text(
            hintText,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontFamily: 'cairo',
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
