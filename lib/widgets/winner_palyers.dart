import 'package:flutter/material.dart';
import 'package:screw/constant.dart';

class WinnerPlayers extends StatelessWidget {
  const WinnerPlayers({
    super.key,
    required this.playerName,
    required this.playerNumber,
  });
  final String playerName;
  final String playerNumber;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          " $playerName : ",
          style: const TextStyle(fontSize: 25, color: Color(Style.kScoreColor)),
        ),
        Text(
          " $playerNumber",
          style: const TextStyle(fontSize: 25),
        ),
      ],
    );
  }
}
