import 'package:flutter/material.dart';
// import 'package:rolldice/styled_text.dart';
import 'package:rolldice/dice_roller.dart';

//co the dung var khai bao bien de dung cho phia duoi
//remove const
//const duoc khoi tao truoc, cai thien tai nguyen, toc do chay
//const giong final nhung final gay gach duoi mau xanh
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //Loai bo gach duoi mau xanh duong
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  //Widget trước build vì return a value...
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
