import 'package:flutter/material.dart';
import 'package:newtest/widgets/animations/home_animation.dart';
import 'package:newtest/widgets/autoSizeText/autoController.dart';
import 'package:newtest/widgets/field_with_photo_and_text.dart';
import 'package:newtest/widgets/main_footer.dart';

class Home extends StatefulWidget {
  Function changePage;
  Home(this.changePage);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  child: HomeAnimation(),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 25, right: 25),
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MediaQuery.of(context).size.width < 750
                        ? AutoSizeText("Imagine\nrobots",
                            textScaleFactor: 1.3,
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 100,
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'nidsans'))
                        : AutoSizeText(
                            "Imagine robots",
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
        FieldWithPhotoAndText(
          photoPath: 'assets/images/logo.png',
          backgroundColor: Colors.white,
          description:
              """Imagine Robots is a robotics team based at the The International Computer High-School of Bucharest. The team was founded in 2018 and since then we have all learned a lot pursuing our common passion.""",
          textSideExtra: Container(
            padding: EdgeInsets.only(top: 15),
            child: MediaQuery.of(context).size.width < 1100
                ? Column(
                    children: [
                      FlatButton(
                        padding: EdgeInsets.all(5),
                        color: Colors.purple[400],
                        hoverColor: Colors.purple[200],
                        child: Text(
                          "Meet us",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 50,
                              fontFamily: "nidsans"),
                        ),
                        onPressed: () => widget.changePage(2),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: FlatButton(
                          padding: EdgeInsets.all(5),
                          color: Colors.blue[400],
                          hoverColor: Colors.blue[200],
                          child: Text(
                            "Contact us",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 50,
                                fontFamily: "nidsans"),
                          ),
                          onPressed: () => widget.changePage(3),
                        ),
                      )
                    ],
                  )
                : Row(
                    children: [
                      FlatButton(
                        padding: EdgeInsets.all(5),
                        color: Colors.purple[400],
                        hoverColor: Colors.purple[200],
                        child: AutoSizeText(
                          "Meet us",
                          maxLines: 1,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 45,
                              fontFamily: "nidsans"),
                        ),
                        onPressed: () => widget.changePage(2),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: FlatButton(
                          padding: EdgeInsets.all(5),
                          color: Colors.blue[400],
                          hoverColor: Colors.blue[200],
                          child: AutoSizeText(
                            "Contact us",
                            maxLines: 1,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 45,
                                fontFamily: "nidsans"),
                          ),
                          onPressed: () => widget.changePage(3),
                        ),
                      )
                    ],
                  ),
          ),
        ),
        FieldWithPhotoAndText(
            photoPath: 'assets/images/trophy.png',
            backgroundColor: Colors.white,
            description:
                """During the years we have worked toghether as a team we managed to obtain a bunch of rewards. You can view our proudest moments in the awards tab or clicking the button below!""",
            textSideExtra: Container(
                padding: EdgeInsets.all(10),
                child: FlatButton(
                  color: Colors.purple[400],
                  hoverColor: Colors.purple[200],
                  child: AutoSizeText(
                    "Our awards",
                    maxLines: 1,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 45,
                        fontFamily: "nidsans"),
                  ),
                  onPressed: () => widget.changePage(1),
                ))),
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
          MediaQuery.of(context).size.width * 0.1,
    );
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
