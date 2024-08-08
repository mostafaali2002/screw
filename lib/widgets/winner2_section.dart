import 'package:flutter/material.dart';
import 'package:screw/constant.dart';
import 'package:screw/result_method.dart';
import 'package:screw/widgets/winner_palyers.dart';

class WinnerSection2 extends StatefulWidget {
  const WinnerSection2({super.key});

  @override
  State<WinnerSection2> createState() => _WinnerSectionState();
}

class _WinnerSectionState extends State<WinnerSection2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WinnerPlayers(
            playerName: GetResult(list: Style.controller).first(),
            playerNumber: Style.textOne.text),
        WinnerPlayers(
            playerName: GetResult(list: Style.controller).second(),
            playerNumber: Style.textTwo.text),
      ],
    );
  }
}
