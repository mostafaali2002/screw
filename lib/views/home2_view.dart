import 'package:flutter/material.dart';
import 'package:screw/constant.dart';
import 'package:screw/views/score2_view.dart';
import 'package:screw/widgets/custom_button.dart';
import 'package:screw/widgets/players_text_field.dart';

class HomeView2 extends StatefulWidget {
  const HomeView2({super.key});

  @override
  State<HomeView2> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(Style.kbackColor),
        body: Form(
          key: Style.formkey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  Image.asset('assets/image.png'),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "ادخل اسماء اللاعبين",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  PlayersTextField(
                    controller: Style.textOne,
                    hint: 'اللاعب الاول',
                  ),
                  const SizedBox(
                    height: Style.ksizeBetween,
                  ),
                  PlayersTextField(
                    controller: Style.textTwo,
                    hint: 'اللاعب الثاني',
                  ),
                  const SizedBox(
                    height: Style.ksizeBetween,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    text: "سكرو",
                    btnColor: const Color(0xffFF8E44),
                    width: 200,
                    onPressed: () {
                      if (Style.formkey.currentState!.validate()) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ScoreView2(),
                            ));
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
