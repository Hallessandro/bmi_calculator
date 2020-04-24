import 'package:flutter/material.dart';

class ReasubleCard extends StatelessWidget {
  final Color colour;
  final Widget childWidget;
  ReasubleCard({@required this.colour, this.childWidget});
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
        child: childWidget,
      ),
    );
  }
}
