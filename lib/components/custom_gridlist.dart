import 'package:flutter/material.dart';

import '../Screens/booking.dart';

class GridList extends StatelessWidget {
  const GridList({
    Key key,
    this.img,
    this.label,
  }) : super(key: key);
  final String img;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      height: 80,
      margin: const EdgeInsets.fromLTRB(17, 15, 17, 15),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Booking(
                      label: "-----",
                    );
                  },
                ),
              );
            },
            child: Container(
              child: ClipRRect(
                child: Image.asset("assets/images/$img",
                    width: 50.0, height: 50.0),
              ),
            ),
          ),
          Text(
            "$label",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          )
        ],
      ),
    );
  }
}
