import 'package:flutter/material.dart';

class MainAppBar extends StatefulWidget {
  final Function changeIndex;
  MainAppBar(this.changeIndex);
  @override
  _MainAppBarState createState() => _MainAppBarState();
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width < 750 ? 75 : 125,
      color: Colors.white.withOpacity(0.8),
      child: Row(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width < 750 ? 75 : 125,
            child: MenuButtons(
              widget.changeIndex,
              Container(
                margin:
                    EdgeInsets.only(left: 5, right: 25, top: 5, bottom: 5),
                child: Image.asset(
                  "assets/images/logo.png",
                  height: MediaQuery.of(context).size.width < 750 ? 65 : 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MenuButtons extends StatefulWidget {
  final Function changeIndex;
  final Widget middleIcon;
  MenuButtons(this.changeIndex, this.middleIcon);

  @override
  _MenuButtonsState createState() => _MenuButtonsState();
}

class _MenuButtonsState extends State<MenuButtons> {
  var isHovering = [false, false, false, false, false];
  void onHoverEnter(int index) {
    setState(() {
      isHovering[index] = true;
    });
  }

  void onHoverExit(int index) {
    setState(() {
      isHovering[index] = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MediaQuery.of(context).size.width < 750
            ? MainAxisAlignment.start
            : MainAxisAlignment.center,
        children: [
          MediaQuery.of(context).size.width < 750
              ? Text("")
              : Container(
                  margin: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: CustomButton(
                    isBold: isHovering[0],
                    onHoverEnter: (_) => onHoverEnter(0),
                    onHoverExit: (_) => onHoverExit(0),
                    onClick: () => widget.changeIndex(0),
                    text: "HOME",
                  ),
                ),
          MediaQuery.of(context).size.width < 750
              ? Text("")
              : Container(
                  margin: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: CustomButton(
                    isBold: isHovering[1],
                    onHoverEnter: (_) => onHoverEnter(1),
                    onHoverExit: (_) => onHoverExit(1),
                    onClick: () => widget.changeIndex(1),
                    text: "AWARDS",
                  ),
                ),
          MediaQuery.of(context).size.width < 750
              ? Text("")
              : widget.middleIcon,
          MediaQuery.of(context).size.width < 750
              ? Text("")
              : Container(
                  margin: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: CustomButton(
                    isBold: isHovering[2],
                    onHoverEnter: (_) => onHoverEnter(2),
                    onHoverExit: (_) => onHoverExit(2),
                    onClick: () => widget.changeIndex(2),
                    text: "TEAM",
                  ),
                ),
          MediaQuery.of(context).size.width < 750
              ? Text("")
              : Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: CustomButton(
                    isBold: isHovering[3],
                    onHoverEnter: (_) => onHoverEnter(3),
                    onHoverExit: (_) => onHoverExit(3),
                    onClick: () => widget.changeIndex(3),
                    text: "CONTACT",
                  ),
                ),
          MediaQuery.of(context).size.width >= 750
              ? Text("")
              : Container(
                  child: GestureDetector(
                    onTap: () {
                      showBottomSheet(
                          context: context,
                          builder: (context) => Container(
                                  child: Card(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      child: CustomButton(
                                        isBold: isHovering[0],
                                        onHoverEnter: (_) => onHoverEnter(0),
                                        onHoverExit: (_) => onHoverExit(0),
                                        onClick: () {
                                          widget.changeIndex(0);
                                          Navigator.of(context).pop();
                                        },
                                        text: "HOME",
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      child: CustomButton(
                                        isBold: isHovering[1],
                                        onHoverEnter: (_) => onHoverEnter(1),
                                        onHoverExit: (_) => onHoverExit(1),
                                        onClick: () {
                                          widget.changeIndex(1);
                                          Navigator.of(context).pop();
                                        },
                                        text: "AWARDS",
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      child: CustomButton(
                                        isBold: isHovering[2],
                                        onHoverEnter: (_) => onHoverEnter(2),
                                        onHoverExit: (_) => onHoverExit(2),
                                        onClick: () {
                                          widget.changeIndex(2);
                                          Navigator.of(context).pop();
                                        },
                                        text: "TEAM",
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      child: CustomButton(
                                        isBold: isHovering[3],
                                        onHoverEnter: (_) => onHoverEnter(3),
                                        onHoverExit: (_) => onHoverExit(3),
                                        onClick: () {
                                          widget.changeIndex(3);
                                          Navigator.of(context).pop();
                                        },
                                        text: "CONTACT",
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      child: CustomButton(
                                        isBold: isHovering[4],
                                        onHoverEnter: (_) => onHoverEnter(4),
                                        onHoverExit: (_) => onHoverExit(4),
                                        onClick: () =>
                                            Navigator.of(context).pop(),
                                        text: "CLOSE",
                                      ),
                                    ),
                                  ],
                                ),
                              )));
                    },
                    child: Container(
                      width: 60,
                      height: 60,
                      margin: EdgeInsets.only(right: MediaQuery.of(context).size.width-160),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/menu_big.png"))),
                    ),
                  ),
                ),
          MediaQuery.of(context).size.width >= 750
              ? Text("")
              : Container(child: widget.middleIcon),
        ]);
  }
}

class CustomButton extends StatelessWidget {
  final Function onHoverEnter, onHoverExit, onClick;
  final String text;
  final bool isBold;
  CustomButton(
      {this.isBold,
      this.onClick,
      this.onHoverEnter,
      this.onHoverExit,
      this.text});
  getColor() {
    switch (text) {
      case "HOME":
        return Color.fromRGBO(50, 126, 138, 1);
        break;
      case "AWARDS":
        return Color.fromRGBO(75, 200, 217, 1);
        break;
      case "TEAM":
        return Color.fromRGBO(154, 108, 243, 1);
        break;
      case "CONTACT":
        return Color.fromRGBO(228, 0, 255, 1);
        break;
      case "CLOSE":
        return Colors.red;
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerEnter: onHoverEnter,
      onPointerExit: onHoverExit,
      child: GestureDetector(
        onTap: onClick,
        child: Text(
          text,
          style: TextStyle(
              fontSize: 40,
              color: getColor(),
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              fontFamily: 'nidsans'),
        ),
      ),
    );
  }
}
