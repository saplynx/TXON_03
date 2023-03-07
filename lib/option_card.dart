import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({
    super.key, required this.option, required this.onTapFun, required this.colour,
  });

  final option;
  final onTapFun;
  final colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(24.0, 5.0, 24.0, 0.0),
      child: Card(
        child: InkWell(
          child: Center(
            child: Text(
                option.toString(),
              style: TextStyle(
                fontSize: 17.0,
              ),
            ),
          ),
          onTap: onTapFun,
        ),
        color: colour,
        elevation: 12.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0)
        ),
      ),
    );
  }
}
