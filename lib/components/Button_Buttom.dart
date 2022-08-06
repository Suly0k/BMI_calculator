import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key, required this.buttonTitle, required this.onTap})
      : super(key: key);

  final Function()? onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      /*
        //sima egyszerű, nem név szerinti routolás
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ResultsPage()));
      */
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButton,
          ),
        ),
        color: kBottomContainerColour,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        padding: const EdgeInsets.only(bottom: 20.0),
        height: kBottomContainerHeight,
      ),
    );
  }
}
