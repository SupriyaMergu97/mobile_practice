// import 'package:carousel_slider/carousel_controller.dart';
// import 'package:carousel_slider/carousel_options.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:service/components/custom_datepicker.dart';
import 'package:service/components/custom_textField.dart';
import 'package:service/components/raised_button.dart';
import 'package:service/models/booking_model.dart';

import '../api_manager.dart';

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
  BookingModel _booking = new BookingModel();
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameCtrl=new TextEditingController();
  TextEditingController _contactCtrl=new TextEditingController();
  TextEditingController _addressCtrl=new TextEditingController();
  TextEditingController _dateCtrl=new TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.label),
      ),
      body: Container(
        // decoration: BoxDecoration(
        //   image:DecorationImage(
        //       image: AssetImage("assets/images/bg2.jpg"), fit: BoxFit.cover),
        // ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomTextField(
                hint: "FullName",
                controller: _nameCtrl,
                validation: (value) {
                  if (value.isEmpty) {
                    return 'Please enter FullName'; //validator function
                  }
                  // _nameCtrl.text=value;
                  _booking.fullName=value;
                  return null;
                },
                icon: Icons.account_circle,
              ),
              CustomTextField(
                hint: "Contact",
                controller: _contactCtrl,
                validation: (value) {
                  if (value.isEmpty) {
                    return 'Please enter your Mob.no.'; //validator function
                  }
                  // _contactCtrl.text=value;
                  _booking.contact=value;

                  return null;
                },
                icon: Icons.phone,
              ),
              CustomTextField(
                hint: "Address",
                controller: _addressCtrl,
                validation: (value) {
                  if (value.isEmpty) {
                    return 'Please enter Address'; //validator function
                  }
                  // _addressCtrl.text=value;
                  _booking.address=value;
                  return null;
                },
              ),
              DatePicker(
                validation:  (value) {
                  if (value.isEmpty) {
                    return 'Please enter date'; //validator function
                  }
                  _booking.date=value;
                  return null;
                },
                controller: _dateCtrl,

              ),
              CustomRaisedButton(
                onPress:(){
                  if(_formKey.currentState.validate()){
                    _booking.category = widget.label;
                    ApiManager().bookingService(_booking);
                  }
                },
                btnName: "Submit",
              )
            ],
          ),
        ),
      ),
    );
  }
}

