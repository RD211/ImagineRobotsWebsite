import 'package:flutter/material.dart';
import 'package:newtest/widgets/animations/rectangles_background.dart';

import 'animated_background.dart';

class ContactAnimation extends StatefulWidget {
  @override
  _ContactAnimationState createState() => _ContactAnimationState();
}

class _ContactAnimationState extends State<ContactAnimation>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AnimatedBackground(
      behaviour: (RectanglesBehaviour(
      )),
      vsync: this,
      child:Container(),
    );
  }
}
