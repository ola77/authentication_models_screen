import 'package:authentication_models_screen/widgets/auth_signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Authentication extends StatefulWidget {
  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {

  var _tabIndex = 0;

  bool get tabbed => _tabIndex != 0;


  bool isSecure = true;

  void passwordIsSecure() {
    setState(() {
      isSecure = !isSecure;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildContent(context),
    );
  }

  Widget buildContent(BuildContext context) {
    return AuthSignUp();
  }
}
