import 'package:flutter/material.dart';
import 'package:newtest/widgets/animations/awards_animation.dart';
import 'package:newtest/widgets/autoSizeText/autoController.dart';
import 'package:newtest/widgets/main_footer.dart';
import 'package:newtest/widgets/team_member_tile.dart';

class Awards extends StatefulWidget {
  @override
  _AwardsState createState() => _AwardsState();
}

class _AwardsState extends State<Awards> {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: [
        Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              ClipPath(
                clipper: MediaQuery.of(context).size.width > 800
                    ? null
                    : InverseTriangleClipper(context),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(50, 126, 138, 1),
                        Color.fromRGBO(154, 108, 243, 1),
                        Color.fromRGBO(228, 0, 255, 1),
                      ],
                    ),
                  ),
                  child: AwardsAnimation(),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                margin: EdgeInsets.only(left: 25, right: 25),
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MediaQuery.of(context).size.width < 750
                        ? AutoSizeText("Team\nAwards",
                            textScaleFactor: 1.3,
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 95,
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'nidsans'))
                        : AutoSizeText(
                            "Team Awards",
                            maxLines: 1,
                            textScaleFactor: 1.3,
                            style: TextStyle(
                              fontSize: 100,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'nidsans',
                            ),
                          ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(vertical: 25),
          alignment: Alignment.topCenter,
          child: Wrap(
              runSpacing: 15,
              spacing: 15,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                TeamPlayerTile("Genius Olympiad", "Genius Olympiad is a international competition for high-schoolers hosted at State University, New York in Oswego.\nWe managed to do really great at this competition, coming back with the silver medal and being mentioned in an online publication in our country.",
                    'assets/images/genius.jpg',BoxFit.cover,fontSize: 18),
                TeamPlayerTile("Enso foundation Hackathon", "Last year we participated the hackathon Hack to the future organized by Enso Foundation. We managed to get second place winning 3000 dollars and a lot of experience.",
                    'assets/images/hackathon.jpg',BoxFit.cover,fontSize: 18),
                TeamPlayerTile("Robochallenge", "Robochallenge is the biggest robotics competition in Europe, it's organized annualy at Politehnica University.\nWe participated to this event this year in the hopes that we will get a place on the podium.\nIn the end we were really happy to hear that we got 3rd place at such a big robotics competition.",
                    'assets/images/robochallenge.jpg',BoxFit.cover,fontSize: 18),
                    ]),
        ),
        MainFooter()
      ],
    );
  }
}

class InverseTriangleClipper extends CustomClipper<Path> {
  BuildContext context;
  InverseTriangleClipper(this.context);
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.lineTo(
        size.width,
        size.height -
            MediaQuery.of(context).size.height * 0.1 -
            MediaQuery.of(context).size.width * 0.1);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(InverseTriangleClipper oldClipper) => false;
}
