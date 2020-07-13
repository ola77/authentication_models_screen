import 'package:authentication_models_screen/widgets/account_confirmation.dart';
import 'package:flutter/material.dart';

class EditUserName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AccountConfirmation(
        hintTextCard: "تعديل اسم المستخدم",
        hintTime: "",
        hintResend: "",
        hintTextLable: "أسم المستخدم",
        hintText: "على صالح الشمرى",
        confirmTextField: "حفظ",
      ),
    );
  }
}
