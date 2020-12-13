import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  const CustomRaisedButton({
    Key key,
    this.btnName,
    this.onPress,
  }) : super(key: key);

  final String btnName;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.symmetric(vertical:15,horizontal:30),
      shape: RoundedRectangleBorder(
        borderRadius:BorderRadius.circular(12)
      ),
      color: Colors.red[700],
      onPressed: onPress,
      child: Text(
        btnName,
        style: TextStyle(fontWeight: FontWeight.w600,
        fontSize: 24,)
      ),
    );
  }
}
