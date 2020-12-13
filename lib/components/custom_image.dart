import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    Key key,
    this.img,
    this.label,
    this.press,
  }) : super(key: key);

  // final Size size;
  final String img;
  final String label;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 0.45,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Text("$label"),
            Image.asset(
              "assets/images/$img.jpg",
              // height: size.height * 0.5,
              //  width: 300,
              fit: BoxFit.cover,
            ),
            RaisedButton(
              onPressed: press,
              child: Text("$label"),
            )
          ],
        ));
  }
}
