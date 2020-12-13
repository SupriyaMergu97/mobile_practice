import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  final TextEditingController controller;
  final Function validation;
  const DatePicker({
    Key key, this.controller, this.validation,
  }) : super(key: key);

  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  String pickedValue='';
Future selectDate() async{
  DateTime picked= await showDatePicker(
    context: context,
   initialDate: new DateTime.now(), 
   firstDate: new DateTime.now(),
    lastDate: new DateTime(2021),

    );
if(picked!=null){
  print('picked value: $picked');
  widget.controller.text = "$picked".split(" ")[0];
}
    
}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        validator: widget.validation,
        controller: widget.controller,
        decoration: InputDecoration(
            hintText: "Select Date",
            icon: GestureDetector(
              onTap: selectDate,
              child: Icon(
                Icons.calendar_today,
              ),
            )),
      ),
    );
  }
}
