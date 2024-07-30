import 'package:flutter/material.dart';
import 'package:screw/constant.dart';
import 'package:screw/result_method.dart';
import 'package:screw/widgets/winner_palyers.dart';

class WinnerSection extends StatefulWidget {
  const WinnerSection({super.key});

  @override
  State<WinnerSection> createState() => _WinnerSectionState();
}

class _WinnerSectionState extends State<WinnerSection> {
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
        WinnerPlayers(
            playerName: GetResult(list: Style.controller).third(),
            playerNumber: Style.textthree.text),
        WinnerPlayers(
            playerName: GetResult(list: Style.controller).fourth(),
            playerNumber: Style.textFour.text),
      ],
    );
  }
}
