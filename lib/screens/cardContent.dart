import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardContent extends StatelessWidget {
  final Icon selectedIcon;
  final String textContent;
  const CardContent({this.selectedIcon, this.textContent});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        selectedIcon != null ? selectedIcon : null,
        SizedBox(height: 15),
        Text(
          textContent != null ? textContent : '',
          style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
        ),
      ],
    );
  }
}
