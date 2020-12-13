import 'package:flutter/material.dart';
import 'package:service/components/custom_image.dart';

import 'booking.dart';

class Hello extends StatefulWidget {
  @override
  _HelloState createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  List<Map<String, String>> fRow = [
    {"img": "carpenter1", "label": "Carpenter"},
    {"img": "plumber", "label": "Plumber"}
  ];
  List<Map<String, String>> sRow = [
    {"img": "electrician", "label": "Electrician"},
    {"img": "repair1", "label": "Repair"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffADDAD2),
        child: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: fRow
                    .map((e) => CustomImage(
                          img: e["img"],
                          label: e["label"],
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Booking(label: e["label"]);
                              }),
                            );
                          },
                        ))
                    .toList()),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: sRow
                    .map((e) => CustomImage(
                          img: e["img"],
                          label: e["label"],
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Booking(label: e["label"]);
                              }),
                            );
                          },
                        ))
                    .toList())
          ],
        ),
      ),
    );
  }
}
