import 'package:flutter/material.dart';
import 'package:newtest/widgets/animations/contact_animation.dart';
import 'package:newtest/widgets/autoSizeText/autoController.dart';
import 'package:newtest/widgets/field_with_photo_and_text.dart';
import 'package:newtest/widgets/main_footer.dart';
import 'dart:js' as js;
import 'awards.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
                  child: ContactAnimation(),
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
                        ? AutoSizeText("Contact\nus",
                            textScaleFactor: 1.3,
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 95,
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'nidsans'))
                        : AutoSizeText(
                            "Contact us",
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
        GestureDetector(onTap: ()=>    js.context.callMethod("open", ["https://goo.gl/maps/uhVGaJdaLt2YU8q1A"]),child:
        FieldWithPhotoAndText(
                      photoPath: 'assets/images/map1.png',
                      backgroundColor: Colors.white,
                      description:
                          """You can meet us at our high-school or talk to us directly on the phone at: +40784 960 535 or by email at: imagine.robots@ichb.ro.\nWe look forward to hearing from you!""",
                      textSideExtra: Text(""),
                    ),),
        MainFooter()
      ],
    );
  }
}
