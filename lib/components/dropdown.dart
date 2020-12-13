import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  final List<String> items;
  final String placeholder;
  final Function onSelect;
  final IconData icon;
  const CustomDropDown(
      {Key key, this.items, this.placeholder, this.onSelect, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10),
          prefixIcon: Icon(icon),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(18))),
      items: items.map((String value) {
        return new DropdownMenuItem(
          value: value,
          child: new Text(
            value,
            style: TextStyle(fontSize: 25, letterSpacing: 3, height: 1,
                ),
          ),
        );
      }).toList(),
      onChanged: onSelect,
      iconSize: 40,
      hint: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          placeholder,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      // dropdownColor: Colors.lightBlue[100],
      // decoration: InputDecoration(labelText: "Select Service"),
    );
  }
}
