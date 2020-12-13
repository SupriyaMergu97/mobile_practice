import 'package:flutter/material.dart';
import 'package:service/components/custom_textField.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        child: Column(
          children: [
            CustomTextField(
              hint: "Email or PhoneNumber",
              icon: Icons.person_outline_outlined,
            ),
            CustomTextField(
              hint: "Password",
              icon: Icons.lock,
            )
          ],
        ),
      ),
    );
  }
}
