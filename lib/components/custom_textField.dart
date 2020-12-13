import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key key,
    this.hint,
    this.validation,
    this.icon,
    this.controller, 
    this.isSecured = false,
  }) : super(key: key);

  final String hint;
  final Function validation;
  final IconData icon;
  final TextEditingController controller;
  final bool isSecured;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical:10,horizontal:18),
      child: TextFormField(
        obscureText: isSecured,
        validator: validation,
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
          hintText: "$hint",
          hintStyle: TextStyle(fontSize: 21,color: Colors.black,),
          prefixIcon: Icon(
            icon,
          ),
        ), //label
      ),
    );
  }
}
