import 'package:authentication_models_screen/widgets/create_a_new_password.dart';
import 'package:flutter/material.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CreateNewPassword(
        hintAddress: " أنشاء كلمه مرور جديده",
        hintNewPasswordLable: "كود التفعيل",
        hintNewPassword: " ادخل كود التفعيل هنا",
        hintOldPasswordLable: " كلمه المرور الجديده",
        hintOldPassword: "**********",
        confirmTextField: "تفعيل",
        hintTime: "00:49",
        hintResend: "أعادة أرسال",
      ),
    );
  }
}
