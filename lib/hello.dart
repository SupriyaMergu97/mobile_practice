import 'package:flutter/material.dart';
import 'package:service/booking.dart';

class Hello extends StatefulWidget {
  @override
  _HelloState createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  List<Map<String,String>> fRow = [{"img":"pic","label":"Carpenter"}, {"img":"s","label":"Plumber"}];
  List<Map<String,String>> sRow=[{"img":"chi","label":"Electrician"},{"img":"div","label":"Repair"}];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: Text('supriya'), backgroundColor: Colors.deepPurpleAccent),
      body: Container(
        color: Color(0xffADDAD2),
        child: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: fRow.map((e) => CustomImage(size: size,img: e["img"],label: e["label"],)).toList()),

            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: sRow.map((e) => CustomImage(size: size,img: e["img"],label: e["label"],)).toList())
          ],
        ),
      ),
    );
  }
}

class CustomImage extends StatelessWidget {
  const CustomImage({
    Key key,
    @required this.size, this.img, this.label,
  }) : super(key: key);

  final Size size;
  final String img;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: size.height * 0.5,
      width: size.width * 0.4,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Text("$label"),
           Image.asset("assets/images/$img.PNG"),
           RaisedButton(onPressed: (){
             Navigator.push(context, 
             MaterialPageRoute(builder: (context){
               return Booking(label: label);
             }),);
           },
           child: Text("$label"),)
        ],
      )
    );
  }
}

