import 'package:authentication_models_screen/widgets/custom_formfeild.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Icon(
              Icons.menu,
              color: Colors.black,
            ),
            SizedBox(
              width: 30,
            ),
          ],
          backgroundColor: Colors.white,
          title: Text(
            "الملف الشخصى",
            style: TextStyle(fontFamily: "Cairo", color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .07,
              padding: EdgeInsets.only(left: 225, top: 8),
              child: SizedBox(
                child: Text(
                  "البيانات الشخصيه",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Cairo",
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xffE8B62E),
              ),
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomFormFeild(
                  hintTextFieldLabel: "اسم المستخدم",
                  hintTextfield: "على صالح الشمرى",
                  suffixIcon: Icon(
                    Icons.create,
                    color: Color(0xff9E224D),
                  ),
                ),
                CustomFormFeild(
                  hintTextFieldLabel: "رقم الجوال",
                  hintTextfield: "00965068956720",
                  suffixIcon: Icon(
                    Icons.create,
                    color: Color(0xff9E224D),
                  ),
                ),
                CustomFormFeild(
                  hintTextFieldLabel: "كلمه المرور",
                  hintTextfield: "*****************",
                  suffixIcon: Icon(
                    Icons.create,
                    color: Color(0xff9E224D),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100),
                )
              ],
            ),
          ],
        ));
  }
}
