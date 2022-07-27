import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/BuildColumns.dart';
import 'ReusableCard.dart';

const bottomContainerHeight = 80.0;
const activeColor = Color(0XFF364156);
const inactiveCardColor = Color(0xff22223b);
const bottomContainerColour = Color(0xffe63946);

enum Genders {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //?-el miatt nem kell inicializálni
  Genders? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Genders.male;
                      });
                    },
                    child: ReusableCard(
                      diffColor: selectedGender == Genders.male
                          ? activeColor
                          : inactiveCardColor,
                      cardChild: Center(
                        child: BuildColumn(
                          diffIcon: FontAwesomeIcons.mars,
                          diffText: 'MALE',
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Genders.female;
                      });
                    },
                    child: ReusableCard(
                      diffColor: selectedGender == Genders.female
                          ? activeColor
                          : inactiveCardColor,
                      cardChild: BuildColumn(
                        diffIcon: FontAwesomeIcons.venus,
                        diffText: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              diffColor: activeColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    diffColor: activeColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    diffColor: activeColor,
                  ),
                ),
              ],
            ), // ignore: non_constant_identifier_names
          ),
          Container(
            color: bottomContainerColour,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
