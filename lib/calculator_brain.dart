import 'dart:math';

class ClaculatorBrain {
  ClaculatorBrain({this.weight, this.height});

  final int? height;
  final int? weight;

  double _bmi = 0; //láthatóság miatt _valami privátra tétel

  String calculateBMI() {
    _bmi = weight! /
        pow((height! / 100), 2); //weight! ... height! -> ! nem nulla-t jelenti
    return _bmi
        .toStringAsFixed(1); // ahány tizedesjegyre szeretnéd annyit jelenít meg
  }

  String getResult() {
    if (_bmi >= 25.0) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25.0) {
      return 'You have a higher than a normal body weight. You should do a cardio session';
    } else if (_bmi > 18.5) {
      return 'You have normal body weight. Good Job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
