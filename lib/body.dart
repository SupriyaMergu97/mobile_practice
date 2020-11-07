import 'package:flutter/material.dart';

import 'hello.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        children: <Widget>[
          Text(
            'suppu',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: size.height * .8,
            width: size.width,
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage("assets/images/pic.PNG"),
            //     fit: BoxFit.cover,
            //   ),
            // ),
            child: FlatButton(
              onPressed: () {
                print('u clicked');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Hello();
                    },
                  ),
                );
              },
              child: Text(
                'Open',
                style: TextStyle(color: Colors.lightBlue),
              ),
            ),
          )
        ],
      ),
    );
  }
}
