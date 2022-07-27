import 'package:flutter/material.dart';

const diffTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xff8d8e98),
);

class BuildColumn extends StatelessWidget {
  final IconData? diffIcon;
  final String diffText;

  BuildColumn({required this.diffText, this.diffIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          diffIcon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(diffText, style: diffTextStyle),
      ],
    );
  }
}
