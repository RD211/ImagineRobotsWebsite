import 'package:flutter/material.dart';
import 'package:newtest/widgets/animations/space_animations.dart';

import 'animated_background.dart';

class AwardsAnimation extends StatefulWidget {
  @override
  _AwardsAnimationState createState() => _AwardsAnimationState();
}

class _AwardsAnimationState extends State<AwardsAnimation>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AnimatedBackground(
      behaviour: (SpaceBehaviour(
      )),
      vsync: this,
      
      child:Container(),
    );
  }
}
