import 'package:flutter/material.dart';
import 'package:screw/constant.dart';
import 'package:screw/widgets/custom_button.dart';
import 'package:screw/widgets/players_text_field.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
                  PlayersTextField(
                    controller: Style.textthree,
                    hint: 'اللاعب الثالث',
                  ),
                  const SizedBox(
                    height: Style.ksizeBetween,
                  ),
                  PlayersTextField(
                    controller: Style.textFour,
                    hint: 'اللاعب الرابع',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
