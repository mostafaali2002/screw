import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screw/constant.dart';
import 'package:screw/cubit/get_score/get_score_cubit.dart';

import 'package:screw/widgets/table2.dart';
import 'package:screw/widgets/winner2_section.dart';

class ScoreView2 extends StatefulWidget {
  const ScoreView2({super.key});

  @override
  State<ScoreView2> createState() => _ScoreViewState();
}

class _ScoreViewState extends State<ScoreView2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(Style.kbackColor),
      body: SingleChildScrollView(
        child: Column(children: [
          const Text(
            "النتيجه",
            style: TextStyle(
                fontSize: 40,
                color: Color(0xffFF8E44),
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 50),
          const ScoreTable2(),
          const SizedBox(height: 35),
          BlocBuilder<GetScoreCubit, GetScoreState>(
            builder: (context, state) {
              if (state is GetScoreSuccess || state is GetScoreInitial) {
                return WinnerSection2();
              } else {
                return const Text("data");
              }
            },
          ),
        ]),
      ),
    ));
  }
}
