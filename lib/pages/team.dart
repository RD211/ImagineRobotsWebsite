import 'package:flutter/material.dart';
import 'package:newtest/widgets/animations/team_animation.dart';
import 'package:newtest/widgets/autoSizeText/autoController.dart';
import 'package:newtest/widgets/main_footer.dart';
import 'package:newtest/widgets/team_member_tile.dart';

class Team extends StatefulWidget {
  @override
  _TeamState createState() => _TeamState();
}

class _TeamState extends State<Team> {
  @override
  Widget build(BuildContext context) {
    return ListView(
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
                  child: TeamAnimation(),
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
                        ? AutoSizeText("Meet\nthe\nteam",
                            textScaleFactor: 1.3,
                            maxLines: 3,
                            style: TextStyle(
                                fontSize: 100,
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'nidsans'))
                        : AutoSizeText(
                            "Meet the team",
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
                TeamPlayerTile(
                  "Dinucu Jianu David",
                  "Leader & Programming",
                  'assets/images/members/david.jpeg',
                  BoxFit.cover,
                ),
                TeamPlayerTile(
                  "Marin Andrei",
                  "Programming",
                  'assets/images/members/marin.jpeg',
                  BoxFit.cover,
                ),
                TeamPlayerTile(
                  "Gheorghe Andrei Alexandru",
                  "Programming",
                  'assets/images/members/andrei_gheorghe.jpeg',
                  BoxFit.cover,
                ),
                TeamPlayerTile(
                  "Ion Alexandru",
                  "Hardware",
                  'assets/images/members/alex_ion.jpeg',
                  BoxFit.cover,
                ),
                TeamPlayerTile(
                  "Nita Diana",
                  "Hardware",
                  'assets/images/members/love.jpeg',
                  BoxFit.cover,
                ),
                TeamPlayerTile(
                  "Stanescu Rares",
                  "Hardware",
                  'assets/images/members/rares.png',
                  BoxFit.cover,
                ),
                TeamPlayerTile(
                  "Jambori Alexandru Valeriu",
                  "Hardware",
                  'assets/images/members/jamby.jpeg',
                  BoxFit.cover,
                ),
                TeamPlayerTile(
                  "Pampu Mihnea Stefan",
                  "Hardware",
                  'assets/images/members/pampu.jpeg',
                  BoxFit.cover,
                ),
                TeamPlayerTile(
                  "Ion Stefan",
                  "Hardware",
                  'assets/images/members/stefan.jpeg',
                  BoxFit.cover,
                ),
                TeamPlayerTile(
                  "Toader Alexandru Petru",
                  "3D Design",
                  'assets/images/members/alex_toader.jpeg',
                  BoxFit.cover,
                ),
                TeamPlayerTile(
                  "Tarec Cezar Midani",
                  "PR & Marketing",
                  'assets/images/members/tarec.jpeg',
                  BoxFit.cover,
                ),
                TeamPlayerTile(
                  "Pietruschevici Balan Mara Andreea",
                  "PR & Marketing",
                  'assets/images/members/mara.jpeg',
                  BoxFit.cover,
                ),
                TeamPlayerTile(
                  "Vicol Ana-Maria",
                  "PR & Marketing",
                  'assets/images/members/ana.jpeg',
                  BoxFit.cover,
                ),
              ]),
        ),
        MainFooter()
      ],
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  BuildContext context;
  TriangleClipper(this.context);
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(
        0,
        size.height -
            MediaQuery.of(context).size.height * 0.1 -
            MediaQuery.of(context).size.width * 0.1);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
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
