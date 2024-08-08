import 'package:flutter/material.dart';
import 'package:screw/constant.dart';
import 'package:screw/views/home2_view.dart';
import 'package:screw/views/home3_view.dart';
import 'package:screw/views/home_view.dart';
import 'package:screw/widgets/custom_button.dart';

class NumberOfPlayer extends StatelessWidget {
  const NumberOfPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(Style.kbackColor),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              Image.asset('assets/image.png'),
              const SizedBox(
                height: 40,
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "اختر عدد اللاعبين",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomButton(
                border: Border.all(color: Colors.white),
                text: "2",
                width: double.infinity,
                btnColor: Colors.transparent,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeView2(),
                      ));
                },
              ),
              const SizedBox(
                height: 18,
              ),
              CustomButton(
                border: Border.all(color: Colors.white),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeView3(),
                      ));
                },
                text: "3",
                width: double.infinity,
                btnColor: Colors.transparent,
              ),
              const SizedBox(
                height: 18,
              ),
              CustomButton(
                border: Border.all(color: Colors.white),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeView(),
                      ));
                },
                text: "4",
                width: double.infinity,
                btnColor: Colors.transparent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
