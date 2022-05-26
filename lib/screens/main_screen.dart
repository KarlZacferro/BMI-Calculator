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
  int height = 170;

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
            child: RoundCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('ALTURA'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text('cm'),
                    ],
                  ),
                  SliderTheme(
                    data: const SliderThemeData(
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 25.0,
                      ),
                    ),
                    child: Slider(
                      min: 100.0,
                      max: 220.0,
                      value: height.toDouble(),
                      activeColor: kSliderActiveColor,
                      inactiveColor: kSliderInactiveColor,
                      thumbColor: kSliderThumbColor,
                      onChanged: (double value) {
                        setState(() {
                          height = value.toInt();
                        });
                        //debugPrint('VALUE: $value / HEIGHT: $height');
                      },
                    ),
                  ),
                ],
              ),
            ),
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
              backgroundColor: kButtonBackgroundColor,
            ),
          ),
        ],
      ),
    );
  }
}
