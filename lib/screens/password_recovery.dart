import 'package:authentication_models_screen/widgets/create_a_new_password.dart';
import 'package:flutter/material.dart';

class PasswordRecoveryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CreateNewPassword(
      hintAddress: "   تغيير كلمه المرور",
      hintOldPasswordLable: "كلمه المرور السابقه",
      hintOldPassword: "      *************",
      hintNewPasswordLable: "كلمه المرور الجديده",
      hintNewPassword: "    *************",
      confirmTextField: "تغيير",
      hintResend: '',
      hintTime: '',
    ));
  }
}
