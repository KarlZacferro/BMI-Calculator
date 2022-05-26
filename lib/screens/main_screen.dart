import 'package:bmi_calculator/widgets/icon_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../consts.dart';
import '../widgets/round_card.dart';

enum Gender {
  male,
  female,
}

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Gender gender = Gender.female;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora IMC'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      if (gender == Gender.female) {
                        setState(() {
                          gender = Gender.male;
                        });
                      }

                      debugPrint(gender == Gender.male ? 'MALE' : 'FEMALE');
                    },
                    child: RoundCard(
                      selected: gender == Gender.male,
                      child: const IconText(
                        icon: FontAwesomeIcons.mars,
                        label: 'HOMEM',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      if (gender == Gender.male) {
                        setState(() {
                          gender = Gender.female;
                        });
                      }
                      debugPrint(gender == Gender.male ? 'MALE' : 'FEMALE');
                    },
                    child: RoundCard(
                      selected: gender == Gender.female,
                      child: const IconText(
                        icon: FontAwesomeIcons.venus,
                        label: 'MULHER',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: RoundCard(),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: RoundCard(),
                ),
                Expanded(
                  flex: 1,
                  child: RoundCard(),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('CALCULAR'),
            style: TextButton.styleFrom(
              backgroundColor: buttonBackgroundColor,
            ),
          ),
        ],
      ),
    );
  }
}
