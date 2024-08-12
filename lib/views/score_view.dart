import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screw/constant.dart';
import 'package:screw/cubit/get_score/get_score_cubit.dart';
import 'package:screw/widgets/table.dart';
import 'package:screw/widgets/winner_section.dart';

class ScoreView extends StatefulWidget {
  const ScoreView({super.key});

  @override
  State<ScoreView> createState() => _ScoreViewState();
}

class _ScoreViewState extends State<ScoreView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(Style.kbackColor),
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 25,
          ),
          const Text(
            "النتيجه",
            style: TextStyle(
                fontSize: 40,
                color: Color(0xffFF8E44),
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  for (int i = 0; i < Style.controller.length; i++) {
                    Style.controller[i].value =
                        const TextEditingValue(text: "0");
                  }
                });
              },
              icon: const Icon(
                Icons.replay,
                size: 36,
              )),
          const SizedBox(height: 40),
          const ScoreTable(),
          const SizedBox(height: 35),
          BlocBuilder<GetScoreCubit, GetScoreState>(
            builder: (context, state) {
              if (state is GetScoreSuccess || state is GetScoreInitial) {
                return WinnerSection();
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
