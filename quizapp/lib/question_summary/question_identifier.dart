import 'package:flutter/material.dart';
// import 'package:quizapp/data/questions.dart';
// import 'package:quizapp/result_screen.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {required this.isCorrectAnswer, required this.questionIndex, super.key});
  final bool isCorrectAnswer;
  final int questionIndex;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      elevation: 2.0,
      fillColor: isCorrectAnswer ? Colors.cyan : Colors.pink,
      child: Text(
        '$questionIndex',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      shape: const CircleBorder(),
    );
  }
}
