import 'package:flutter/material.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    super.key, required this.question,
  });

  final question;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.0,
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 8.0),
      child: Card(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
                question.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
        ),
        color: Colors.white,
        //elevation: 8.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0)
        ),
      ),
    );
  }
}
