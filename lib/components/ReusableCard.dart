import 'package:flutter/material.dart';

//Custom widget, uj widget, teljesen magunk formalhatjuk
class ReusableCard extends StatelessWidget {
  //sajat parameter, szinmegvaltoztatasra
  /*Constructor*/
  final Color diffColor;
  final Widget? cardChild; //? -> nem required
  final Function()? onPress; //()? -> kell
  ReusableCard({required this.diffColor, this.cardChild, this.onPress});

  //tobbszor hasznalatos kod roviditesere
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: diffColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
