import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screw/cubit/get_score/get_score_cubit.dart';
import 'package:screw/views/home_view.dart';

void main() {
  runApp(const Screw());
}

class Screw extends StatelessWidget {
  const Screw({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => GetScoreCubit(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark(),
          home: const HomeView(),
        ));
  }
}
