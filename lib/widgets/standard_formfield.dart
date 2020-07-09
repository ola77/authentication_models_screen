import 'package:flutter/material.dart';

class StandardFormField extends StatelessWidget {
  final String hintText;
  final EdgeInsetsGeometry padding;
  final Icon suffixIcon;

  StandardFormField({
    this.hintText,
    this.padding,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: EdgeInsets.only(left: 20, top: 50, right: 20),
            child: TextFormField(
              textDirection: TextDirection.rtl,
              decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.black)),
                  hintText: hintText,
                  suffix: suffixIcon,
                  hintStyle: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xff9E224D),
                      fontFamily: 'Cairo'),
              ),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(bottom: 20)),
      ],
    );
  }
}
