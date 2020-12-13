// To parse this JSON data, do
//
//     final bookingModel = bookingModelFromJson(jsonString);

import 'dart:convert';

BookingModel bookingModelFromJson(String str) => BookingModel.fromJson(json.decode(str));

String bookingModelToJson(BookingModel data) => json.encode(data.toJson());

class BookingModel {
    BookingModel({
        this.city,
        this.category,
        this.fullName,
        this.contact,
        this.email,
        this.address,
        this.date,
        this.time,
    });

    String city;
    String category;
    String fullName;
    String contact;
    String email;
    String address;
    String date;
    String time;

    factory BookingModel.fromJson(Map<String, dynamic> json) => BookingModel(
        city: json["city"],
        category: json["category"],
        fullName: json["fullName"],
        contact: json["contact"],
        email: json["email"],
        address: json["address"],
        date: json["date"],
        time: json["time"],
    );

    Map<String, dynamic> toJson() => {
        "city": city,
        "category": category,
        "fullName": fullName,
        "contact": contact,
        "email": email,
        "address": address,
        "date": date,
        "time": time,
    };
}
