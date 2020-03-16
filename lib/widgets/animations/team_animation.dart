import 'package:flutter/material.dart';
import 'package:newtest/widgets/animations/lines_animation.dart';

import 'animated_background.dart';

class TeamAnimation extends StatefulWidget {
  @override
  _TeamAnimationState createState() => _TeamAnimationState();
}

class _TeamAnimationState extends State<TeamAnimation>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AnimatedBackground(
      behaviour: (RacingLinesBehaviour(
      )),
      vsync: this,
      child:Container(),
    );
  }
}
