import 'package:flutter/material.dart';
import 'package:screw/constant.dart';
import 'package:screw/views/score_view.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xffFF8E44)),
      child: MaterialButton(
        onPressed: () {
          if (Style.formkey.currentState!.validate()) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScoreView(),
                ));
          }
        },
        child: const Text("سكرو",
            style: TextStyle(
              fontSize: 20,
            )),
      ),
    );
  }
}
