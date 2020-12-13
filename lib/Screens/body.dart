// import 'dart:html';

import 'package:flutter/material.dart';
// import 'package:service/Screens/signup.dart';
import 'package:service/components/dropdown.dart';
import 'package:service/components/raised_button.dart';

import 'booking.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> fRow = [
    {"img": "assets/images/rcarpentry.png", "label": "Carpenter"},
    {"img": "assets/images/rcleaning.png", "label": "cleaning"},
    {"img": "assets/images/rplumbing.png", "label": "plumber"},
    {"img": "assets/images/relectrical.png", "label": "Electrician"},
    {"img": "assets/images/rRepair.png", "label": "Repair"},
    {"img": "assets/images/roller-brush.png", "label": "painting"}
  ];

  final List<String> services = [
    'Carpenter',
    'Plumber',
    'Electrician',
    'Repair'
  ];
  final List<String> cities = [
    'Hyderabad',
    'Delhi',
    'Benglore',
    'Mumbai',
    'Chennai',
    'Pune'
  ];
  String selectedService;
  String selectedCity;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // width: size.width * 1,
      // height: size.height * 1,
      // margin: EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: size.width * 1,
              height: size.height * 0.5,
              child: Stack(
                children: <Widget>[
                  Container(
                    width: size.width * 1,
                    height: size.height * 0.5,
                    child: Image.asset(
                      "assets/images/home8.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // height: 100,
                    margin: EdgeInsets.all(45.0),
                    alignment: Alignment(0, -0.7),
                    child: CustomDropDown(
                      icon: Icons.room,
                      items: cities,
                      placeholder: "Select City",
                      onSelect: (_) {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(45.0),
                    alignment: Alignment.center,
                    child: CustomDropDown(
                      icon: Icons.search,
                      items: services,
                      placeholder: "Select Service",
                      onSelect: (val) {
                        setState((){
                          selectedService = val;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Our Services',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'IBMPlexSerif-Regular',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
              height: size.height * 0.37,
              // child: Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                children: List.generate(
                  fRow.length,
                  (index) => buildServiceTile(
                      fRow[index]['img'], fRow[index]['label']),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child: SizedBox(
                // height: 250.0,
                // height: size.height * 0.1,
                child: CustomRaisedButton(
                  onPress: () {
                    print('u clicked');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          print('___________ $selectedService');
                          return Booking(label: selectedService);
                        },
                      ),
                    );
                  },
                  btnName: 'Book Now',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column buildServiceTile(img, label) {
    return Column(
      children: [
        InkWell(
          child: Container(
            height: 70,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.contain,
              ),
            ),
          ),
          // onTap: () {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) {
          //         return Booking(),
          //         settings:RouteSettings(arguments: fRow[index]);
          //       },
          //     ),
          //   );
          // },
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            label,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
