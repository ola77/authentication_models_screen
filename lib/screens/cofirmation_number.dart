import 'package:authentication_models_screen/widgets/account_confirmation.dart';
import 'package:flutter/material.dart';

class CofirmationNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AccountConfirmation(
        hintTextCard: "    تأكيد رقم الجوال  ",
        confirmTextField: "تأكيد",
        hintTextLable: "كود التفعيل",
        hintText: "أكتب كود التفعيل هنا",
        hintResend: "أعاده ارسال",
        hintTime: "00:49",
      ),
    );
  }
}
