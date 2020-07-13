import 'package:flutter/material.dart';

class CustomFormFeild extends StatelessWidget {
  final String hintTextFieldLabel;
  final String hintTextfield;
  final Icon suffixIcon;

  const CustomFormFeild(
      {Key key, this.hintTextFieldLabel, this.hintTextfield, this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        padding: EdgeInsets.all(25),
        height: MediaQuery.of(context).size.height * .2,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              hintTextFieldLabel,
              style: TextStyle(
                fontFamily: 'Cairo',
                color: Color(0xff0D0C00),
              ),
              textDirection: TextDirection.rtl,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20, right: 20),
                fillColor: Color(0xffF6F7FC),
                filled: true,
                hintText: hintTextfield,
                suffixIcon: suffixIcon,
                hintStyle: TextStyle(
                  fontFamily: 'cairo',
                  color: Colors.black,
                  fontSize: 12.0,
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(6))),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.transparent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(6))),
//                  border: OutlineInputBorder(
//                     // borderRadius:
//                     // BorderRadius.all(Radius.circular(16))
              ),
            ),

            //   ),
          ],
        ),
      ),
    );
  }
}
