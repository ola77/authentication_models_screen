import 'package:authentication_models_screen/widgets/custom_alaret_dialogue.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomAlaretDialouge(
        hintText: "تغيير كلمه المرور",
        hintTextFieldLabel: "كلمه المرور السابقه",
        hintTextField: "  ****************",
        hintTime: "",
        hintResend: "",
        confirmTextField: "تغيير",
      ),
    );
  }
}
