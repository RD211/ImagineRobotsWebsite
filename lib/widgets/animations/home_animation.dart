import 'package:flutter/material.dart';
import 'package:newtest/widgets/animations/mesh_animation.dart';

import 'animated_background.dart';

class HomeAnimation extends StatefulWidget {
  @override
  _HomeAnimationState createState() => _HomeAnimationState();
}

class _HomeAnimationState extends State<HomeAnimation>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AnimatedBackground(
      behaviour: (RandomParticleBehaviour(
        options: ParticleOptions(
          spawnMinSpeed: 10,
          spawnMaxSpeed: 10,
          baseColor: Colors.white,
          particleCount: ((MediaQuery.of(context).size.width/20).floor()),
        ),
      )),
      vsync: this,
      child:Container(),
    );
  }
}
