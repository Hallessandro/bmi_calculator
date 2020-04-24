import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card.dart';
import 'cardContent.dart';

const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                ReasubleCard(
                  colour: inactiveCardColour,
                  childWidget: CardContent(
                    textContent: "MALE",
                    selectedIcon: Icon(
                        FontAwesomeIcons.mars,
                        size: 80,
                    ),
                  ),
                ),
                ReasubleCard(
                  colour: inactiveCardColour,
                  childWidget: CardContent(
                    textContent: "FEMALE",
                    selectedIcon: Icon(
                        FontAwesomeIcons.venus,
                        size: 80,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ReasubleCard(colour: Color(0xFF1D1E33)),
          Expanded(
            child: Row(
              children: <Widget>[
              ReasubleCard(colour: Color(0xFF1D1E33)),
              ReasubleCard(colour: Color(0xFF1D1E33)),
              ],
            ),
          ),          
        ],
      ),
      /*
      //We can add a theme direct to a specific element in this way:
      floatingActionButton: Theme(
          data: ThemeData(accentColor: Colors.purple),
          child: FloatingActionButton(
            child: Icon(Icons.add),
        ),
      ),
      */
    );
  }
}