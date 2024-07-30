import 'package:flutter/material.dart';

abstract class Style {
  static const kbackColor = 0xff191616;
  static const kScoreColor = 0xffFF8E44;
  static var formkey = GlobalKey<FormState>();
  static var forkey = GlobalKey<FormState>();
  static TextEditingController textOne = TextEditingController();
  static TextEditingController textTwo = TextEditingController();
  static TextEditingController textthree = TextEditingController();
  static TextEditingController textFour = TextEditingController();
  static List<TextEditingController> controller =
      List.generate(20, (index) => TextEditingController(text: "0"));
  static const ksizeBetween = 15.0;
  static const ksizeScore = 20.0;
  static const ksizePlayer = 17.0;
  static const kHeaderScore = 25.0;
}
