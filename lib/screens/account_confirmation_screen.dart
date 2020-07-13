import 'package:authentication_models_screen/widgets/account_confirmation.dart';
import 'package:flutter/material.dart';

class AccountConfirmationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AccountConfirmation(
        hintTextCard: "        تأكيد الحساب",
        confirmTextField: "تفعيل",
        hintTime: "00:44",
        hintResend: "أعاده ارسال",
        hintTextLable: "كود التفعيل",
        hintText: "أكتب كود التفعيل هنا",
      ),
    );
  }
}
