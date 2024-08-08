import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screw/constant.dart';
import 'package:screw/cubit/get_score/get_score_cubit.dart';
import 'package:screw/widgets/text_field_score.dart';

class ScoreTable3 extends StatelessWidget {
  const ScoreTable3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: Style.forkey,
      child: DataTable(
        headingRowColor: MaterialStateProperty.all(
          const Color(Style.kScoreColor),
        ),
        columnSpacing: 15,
        dataRowHeight: 90,
        border: TableBorder.all(
          color: Colors.white,
        ),
        columns: const <DataColumn>[
          DataColumn(
              label: Text(
            '5',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: Style.kHeaderScore, color: Colors.white),
          )),
          DataColumn(
              label: Text(
            '4',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: Style.kHeaderScore, color: Colors.white),
          )),
          DataColumn(
              label: Text(
            '3',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: Style.kHeaderScore, color: Colors.white),
          )),
          DataColumn(
              label: Text(
            '2',
            style: TextStyle(fontSize: Style.kHeaderScore, color: Colors.white),
          )),
          DataColumn(
              label: Text(
            '1',
            style: TextStyle(fontSize: Style.kHeaderScore, color: Colors.white),
          )),
          DataColumn(
              label: Text(
            "الاسم",
            style: TextStyle(fontSize: Style.kHeaderScore, color: Colors.white),
          )),
        ],
        rows: <DataRow>[
          DataRow(cells: <DataCell>[
            DataCell(
              TextFieldScore(
                controller: Style.controller[0],
                onSubmitted: (p0) {
                  if (Style.forkey.currentState!.validate()) {
                    BlocProvider.of<GetScoreCubit>(context)
                        .getScore(list: Style.controller);
                  } else {}
                },
              ),
            ),
            DataCell(
              TextFieldScore(
                controller: Style.controller[1],
                onSubmitted: (p0) {
                  if (Style.forkey.currentState!.validate()) {
                    BlocProvider.of<GetScoreCubit>(context)
                        .getScore(list: Style.controller);
                  }
                },
              ),
            ),
            DataCell(
              TextFieldScore(
                controller: Style.controller[2],
                onSubmitted: (p0) {
                  if (Style.forkey.currentState!.validate()) {
                    BlocProvider.of<GetScoreCubit>(context)
                        .getScore(list: Style.controller);
                  }
                },
              ),
            ),
            DataCell(
              TextFieldScore(
                controller: Style.controller[3],
                onSubmitted: (p0) {
                  if (Style.forkey.currentState!.validate()) {
                    BlocProvider.of<GetScoreCubit>(context)
                        .getScore(list: Style.controller);
                  }
                },
              ),
            ),
            DataCell(
              TextFieldScore(
                controller: Style.controller[4],
                onSubmitted: (p0) {
                  if (Style.forkey.currentState!.validate()) {
                    BlocProvider.of<GetScoreCubit>(context)
                        .getScore(list: Style.controller);
                  }
                },
              ),
            ),
            DataCell(
              Text(
                '${Style.textOne.text}',
                style: const TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
          ]),
          DataRow(cells: <DataCell>[
            DataCell(
              TextFieldScore(
                controller: Style.controller[5],
                onSubmitted: (p0) {
                  if (Style.forkey.currentState!.validate()) {
                    BlocProvider.of<GetScoreCubit>(context)
                        .getScore(list: Style.controller);
                  }
                },
              ),
            ),
            DataCell(
              TextFieldScore(
                controller: Style.controller[6],
                onSubmitted: (p0) {
                  if (Style.forkey.currentState!.validate()) {
                    BlocProvider.of<GetScoreCubit>(context)
                        .getScore(list: Style.controller);
                  }
                },
              ),
            ),
            DataCell(
              TextFieldScore(
                controller: Style.controller[7],
                onSubmitted: (p0) {
                  if (Style.forkey.currentState!.validate()) {
                    BlocProvider.of<GetScoreCubit>(context)
                        .getScore(list: Style.controller);
                  }
                },
              ),
            ),
            DataCell(
              TextFieldScore(
                controller: Style.controller[8],
                onSubmitted: (p0) {
                  if (Style.forkey.currentState!.validate()) {
                    BlocProvider.of<GetScoreCubit>(context)
                        .getScore(list: Style.controller);
                  }
                },
              ),
            ),
            DataCell(
              TextFieldScore(
                controller: Style.controller[9],
                onSubmitted: (p0) {
                  if (Style.forkey.currentState!.validate()) {
                    BlocProvider.of<GetScoreCubit>(context)
                        .getScore(list: Style.controller);
                  }
                },
              ),
            ),
            DataCell(
              Text(
                '${Style.textTwo.text} ',
                style: const TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
          ]),
          DataRow(cells: <DataCell>[
            DataCell(
              TextFieldScore(
                controller: Style.controller[10],
                onSubmitted: (p0) {
                  if (Style.forkey.currentState!.validate()) {
                    BlocProvider.of<GetScoreCubit>(context)
                        .getScore(list: Style.controller);
                  }
                },
              ),
            ),
            DataCell(
              TextFieldScore(
                controller: Style.controller[11],
                onSubmitted: (p0) {
                  if (Style.forkey.currentState!.validate()) {
                    BlocProvider.of<GetScoreCubit>(context)
                        .getScore(list: Style.controller);
                  }
                },
              ),
            ),
            DataCell(
              TextFieldScore(
                controller: Style.controller[12],
                onSubmitted: (p0) {
                  if (Style.forkey.currentState!.validate()) {
                    BlocProvider.of<GetScoreCubit>(context)
                        .getScore(list: Style.controller);
                  }
                },
              ),
            ),
            DataCell(
              TextFieldScore(
                controller: Style.controller[13],
                onSubmitted: (p0) {
                  if (Style.forkey.currentState!.validate()) {
                    BlocProvider.of<GetScoreCubit>(context)
                        .getScore(list: Style.controller);
                  }
                },
              ),
            ),
            DataCell(
              TextFieldScore(
                controller: Style.controller[14],
                onSubmitted: (p0) {
                  if (Style.forkey.currentState!.validate()) {
                    BlocProvider.of<GetScoreCubit>(context)
                        .getScore(list: Style.controller);
                  }
                },
              ),
            ),
            DataCell(
              Text(
                '${Style.textthree.text} ',
                style: const TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
