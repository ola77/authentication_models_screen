import 'package:flutter/material.dart';

class CreateNewPassword extends StatelessWidget {
  final String hintAddress;
  final String hintOldPasswordLable;
  final String hintOldPassword;
  final String hintNewPasswordLable;
  final String hintNewPassword;
  final String hintTime;
  final String hintResend;
  final String confirmTextField;

  const CreateNewPassword({Key key,
    this.hintAddress,
    this.hintOldPasswordLable,
    this.hintOldPassword,
    this.hintNewPasswordLable,
    this.hintNewPassword,
    this.hintTime,
    this.hintResend,
    this.confirmTextField})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Color(0xff9DA0A7),
          child: AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            titlePadding: EdgeInsets.only(bottom: 20),
            backgroundColor: Colors.white,
            title: Container(
              padding: EdgeInsets.only(top: 10, left: 50),
              decoration: BoxDecoration(
                  color: Color(0xff9E224D),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0))),
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * .10,
              child: Text(
                hintAddress,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo'),
              ),
            ),
            content: Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * .3,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * .05,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * .65,
                      child: Text(
                        hintOldPasswordLable,
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          color: Color(0xff0D0C00),
                        ),
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * .05,
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(5),
                          fillColor: Color(0xffF6F7FC),
                          filled: true,
                          hintText: hintOldPassword,
                          hintStyle: TextStyle(
                            fontFamily: 'cairo',
                            color: Colors.black,
                            fontSize: 12.0,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffE3E3EE),
                              ),
                              borderRadius:
                              BorderRadius.all(Radius.circular(46))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffE3E3EE), width: 2.0),
                              borderRadius:
                              BorderRadius.all(Radius.circular(46))),
                          border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(46))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * .05,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * .65,
                      child: Text(
                        hintNewPasswordLable,
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          color: Color(0xff0D0C00),
                        ),
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * .05,
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(5),
                          fillColor: Color(0xffF6F7FC),
                          filled: true,
                          hintText: hintNewPassword,
                          hintStyle: TextStyle(
                            fontFamily: 'cairo',
                            color: Colors.black,
                            fontSize: 12.0,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffE3E3EE),
                              ),
                              borderRadius:
                              BorderRadius.all(Radius.circular(46))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffE3E3EE), width: 2.0),
                              borderRadius:
                              BorderRadius.all(Radius.circular(46))),
                          border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(46))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * .9,
                      child: Row(
                        children: [
                          Text(
                            hintTime,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xff9E224D),
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            hintResend,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xff9E224D),
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            actions: <Widget>[
              InkWell(
                onTap: () {},
                child: SizedBox(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * .30,
                  child: Container(
                    child: Text(
                      "عوده",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xff9E224D),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery
                    .of(context)
                    .size
                    .width * .04,
              ),
              InkWell(
                onTap: () {},
                child: SizedBox(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * .30,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Color(0xff9E224D)),
                    child: Text(
                      confirmTextField,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
              )
            ],
          ),
        ),
      ],
    );
  }
}
