import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  const Booking({
    Key key,
    @required this.label,
  }) : super(key: key);

  final String label;

  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(widget.label) ,
      ),
      
      
    );
  }
}
