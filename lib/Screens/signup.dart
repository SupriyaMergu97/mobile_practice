import 'package:flutter/material.dart';
import 'package:service/components/custom_textField.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        child: Column(
          children: [
            CustomTextField(
              hint: "FirstName",
              icon: Icons.person,
            ),
            CustomTextField(
              hint: "LastName",
            ),
            CustomTextField(
              hint: "Email or PhoneNumber",
              icon: Icons.email,
            ),
            CustomTextField(
              hint: "Address",
            ),
            CustomTextField(
              hint: "Experience",
            ),
            CustomTextField(
              hint: "Password",
              icon: Icons.lock,
              isSecured: true
            ),
            CustomTextField(
              hint: "Confirm Password ",
              isSecured:true
              ),
            Text('Already have an account? Login',
            style: TextStyle(fontSize: 20,
            ),)
          ],
        ),
      ),
    );
  }
}
