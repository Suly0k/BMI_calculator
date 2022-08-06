import 'package:flutter/material.dart';

//saját "elevated button" építés, legokból
//ennek az az előnye, hogy kedvem szerin változtathatok bármit

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onPressed}); // inicializálás

  final IconData? icon; //
  final Function()?
      onPressed; // ()? kell, mert másképp nem fogja bevenni a fuggvényt

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon), // csak az icon data(+ -) egy változó.
      onPressed: onPressed,
      elevation: 6.0, //-> shadow
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xff4c4f5e),
    );
  }
}
