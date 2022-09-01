import 'package:flutter/cupertino.dart';

class DoctorsModel {
  String? imageurl, name, occupation, fee, rating;
  IconData? icon_star;
  DoctorsModel({
    this.imageurl,
    this.name,
    this.occupation,
    this.fee,
    this.rating,
    this.icon_star,
  });
}
