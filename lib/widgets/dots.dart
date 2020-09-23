import 'package:flutter/material.dart';
import '../globals/dimensions.dart';

class Dots extends StatefulWidget {
  final Color dot;
  Dots(this.dot);

  @override
  State<StatefulWidget> createState() => DotsState();
}

class DotsState extends State<Dots> {
  Widget build(context) {
    return new Container(
      width: DIM_DOT_WIDTH,
      height: DIM_DOT_HEIGHT,
      decoration: new BoxDecoration(
        color: widget.dot,
        shape: BoxShape.circle,
      ),
    );
  }
}
