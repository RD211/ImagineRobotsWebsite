import 'package:flutter/material.dart';
import 'dart:js' as js;

class MainFooter extends StatefulWidget {
  @override
  _MainFooterState createState() => _MainFooterState();
}

class _MainFooterState extends State<MainFooter> {
  var isHovering = [false, false, false, false];
  var urlToLaunch = [
    "https://www.facebook.com/ImagineRobots.ICHB/",
    "https://www.instagram.com/imagine_robots/",
    "https://www.youtube.com/channel/UCp1TZnGKX0pfUZkTFl7qrTw",
    "mailto:imagine.robots@ichb.ro"
  ];
  void launchUrl(int id) {
    js.context.callMethod("open", [urlToLaunch[id]]);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.2 +
          (MediaQuery.of(context).size.width > 800 ? 0 : 105),
      color: Colors.white,
      child: MediaQuery.of(context).size.width < 800
          ? Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    bottom: 15,
                    top: 15,
                    left: 15,
                    right: 15,
                  ),
                  child: GestureDetector(
                    child: Image.asset(
                      'assets/images/logo_long.png',
                      height: 150,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 60,
                    ),
                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.only(
                          left: isHovering[0] ? 5 : 10,
                          right: isHovering[0] ? 5 : 10,
                        ),
                        child: Listener(
                          onPointerEnter: (_) {
                            setState(() {
                              isHovering[0] = true;
                            });
                          },
                          onPointerExit: (_) {
                            setState(() {
                              isHovering[0] = false;
                            });
                          },
                          child: GestureDetector(
                            onTap: () => launchUrl(0),
                            child: Image.asset(
                              'assets/images/facebook.png',
                              width: isHovering[0] ? 60 : 50,
                              height: isHovering[0] ? 60 : 50,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: isHovering[1] ? 5 : 10),
                      child: Listener(
                        onPointerEnter: (_) {
                          setState(() {
                            isHovering[1] = true;
                          });
                        },
                        onPointerExit: (_) {
                          setState(() {
                            isHovering[1] = false;
                          });
                        },
                        child: GestureDetector(
                          onTap: () => launchUrl(1),
                          child: Image.asset(
                            'assets/images/instagram.png',
                            width: isHovering[1] ? 60 : 50,
                            height: isHovering[1] ? 60 : 50,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: isHovering[2] ? 5 : 10),
                      child: Listener(
                        onPointerEnter: (_) {
                          setState(() {
                            isHovering[2] = true;
                          });
                        },
                        onPointerExit: (_) {
                          setState(() {
                            isHovering[2] = false;
                          });
                        },
                        child: GestureDetector(
                          child: Image.asset(
                            'assets/images/youtube.png',
                            width: isHovering[2] ? 60 : 50,
                            height: isHovering[2] ? 60 : 50,
                          ),
                          onTap: () => launchUrl(2),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: isHovering[3] ? 5 : 10),
                      child: Listener(
                        onPointerEnter: (_) {
                          setState(() {
                            isHovering[3] = true;
                          });
                        },
                        onPointerExit: (_) {
                          setState(() {
                            isHovering[3] = false;
                          });
                        },
                        child: GestureDetector(
                          child: Image.asset(
                            'assets/images/gmail.png',
                            width: isHovering[3] ? 60 : 50,
                            height: isHovering[3] ? 60 : 50,
                          ),
                          onTap: () => launchUrl(3),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                GestureDetector(
                  child: Image.asset(
                    'assets/images/logo_long.png',
                    height: 150,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: isHovering[0] ? 5 : 10),
                      child: Listener(
                        onPointerEnter: (_) {
                          setState(() {
                            isHovering[0] = true;
                          });
                        },
                        onPointerExit: (_) {
                          setState(() {
                            isHovering[0] = false;
                          });
                        },
                        child: GestureDetector(
                          child: Image.asset(
                            'assets/images/facebook.png',
                            width: isHovering[0] ? 60 : 50,
                            height: isHovering[0] ? 60 : 50,
                          ),
                          onTap: () => launchUrl(0),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: isHovering[1] ? 5 : 10),
                      child: Listener(
                        onPointerEnter: (_) {
                          setState(() {
                            isHovering[1] = true;
                          });
                        },
                        onPointerExit: (_) {
                          setState(() {
                            isHovering[1] = false;
                          });
                        },
                        child: GestureDetector(
                          child: Image.asset(
                            'assets/images/instagram.png',
                            width: isHovering[1] ? 60 : 50,
                            height: isHovering[1] ? 60 : 50,
                          ),
                          onTap: () => launchUrl(1),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: isHovering[2] ? 5 : 10),
                      child: Listener(
                        onPointerEnter: (_) {
                          setState(() {
                            isHovering[2] = true;
                          });
                        },
                        onPointerExit: (_) {
                          setState(() {
                            isHovering[2] = false;
                          });
                        },
                        child: GestureDetector(
                          child: Image.asset(
                            'assets/images/youtube.png',
                            width: isHovering[2] ? 60 : 50,
                            height: isHovering[2] ? 60 : 50,
                          ),
                          onTap: () => launchUrl(2),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: isHovering[3] ? 5 : 10),
                      child: Listener(
                        onPointerEnter: (_) {
                          setState(() {
                            isHovering[3] = true;
                          });
                        },
                        onPointerExit: (_) {
                          setState(() {
                            isHovering[3] = false;
                          });
                        },
                        child: GestureDetector(
                          child: Image.asset(
                            'assets/images/gmail.png',
                            width: isHovering[3] ? 60 : 50,
                            height: isHovering[3] ? 60 : 50,
                          ),
                          onTap: () => launchUrl(3),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
