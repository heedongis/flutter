import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

import '../size.dart';
import 'custom_text_form_field.dart';

class CustomForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            text: "E-mail",
            mVal: (value) {
              if (value!.isEmpty) {
                return "Please enter E-mail";
              } else if (!isEmail(value)) {
                return "It is not email";
              } else {
                return null;
              }
            },
          ),
          SizedBox(height: medium_gap),
          CustomTextFormField(
            text: "Password",
            mVal: (value) {
              if (value!.isEmpty) {
                return "Please enter Password";
              } else if (value.toString().length > 20) {
                return "너무 길다 임마";
              } else {
                return null;
              }
            },
          ),
          SizedBox(height: large_gap),
          TextButton(
            onPressed: () {
              //유효성 검사
              _formKey.currentState!.validate() == true
                  ? Navigator.pushNamed(context, "/home")
                  : null;
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
