import 'package:flutter/material.dart';
import '../constants.dart';

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
        Text(diffText, style: kLabelTextStyle),
      ],
    );
  }
}
