import 'package:authentication_models_screen/widgets/account_confirmation.dart';
import 'package:flutter/material.dart';

class EditMobileNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AccountConfirmation(
        hintTextCard: "    تعديل رقم الجوال",
        hintTextLable: "رقم الجوال",
        hintText: "     09059156560                               |  966 +  ",
        hintResend: "",
        hintTime: "",
        confirmTextField: "حفظ",
      ),
    );
  }
}
