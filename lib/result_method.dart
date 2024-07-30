import 'package:flutter/material.dart';

class GetResult {
  final List<TextEditingController> list;
  GetResult({required this.list});

  String first() {
    return "${int.parse(list[0].text) + int.parse(list[1].text) + int.parse(list[2].text) + int.parse(list[3].text) + int.parse(list[4].text)}";
  }

  String second() {
    return "${int.parse(list[5].text) + int.parse(list[6].text) + int.parse(list[7].text) + int.parse(list[8].text) + int.parse(list[9].text)}";
  }

  String third() {
    return "${int.parse(list[10].text) + int.parse(list[11].text) + int.parse(list[12].text) + int.parse(list[13].text) + int.parse(list[14].text)}";
  }

  String fourth() {
    return "${int.parse(list[15].text) + int.parse(list[16].text) + int.parse(list[17].text) + int.parse(list[18].text) + int.parse(list[19].text)}";
  }
}
