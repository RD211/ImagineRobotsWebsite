import 'package:flutter/material.dart';

class FieldWithPhotoAndText extends StatefulWidget {
  final String photoPath, description;
  final Widget textSideExtra;
  final Color backgroundColor;
  FieldWithPhotoAndText(
      {this.description,
      this.photoPath,
      this.backgroundColor,
      this.textSideExtra});
  @override
  _FieldWithPhotoAndTextState createState() => _FieldWithPhotoAndTextState();
}

class _FieldWithPhotoAndTextState extends State<FieldWithPhotoAndText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.backgroundColor,
      padding: EdgeInsets.only(
        top: 25,
        left: MediaQuery.of(context).size.width > 800
            ? 100
            : MediaQuery.of(context).size.width * 0.1,
        right: MediaQuery.of(context).size.width > 800
            ? 100
            : MediaQuery.of(context).size.width * 0.1,
        bottom: 25,
      ),
      width: MediaQuery.of(context).size.width > 800
          ? MediaQuery.of(context).size.width * 0.7
          : MediaQuery.of(context).size.width,
      alignment: Alignment.topCenter,
      child: MediaQuery.of(context).size.width > 850
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  widget.photoPath,
                  width: 300,
                  alignment: Alignment.center,
                ),
                Column(children: [
                  Container(
                    padding: EdgeInsets.only(top: 25, left: 25),
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Text(
                      widget.description,
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'nidsans',
                      ),
                      maxLines: 9,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  widget.textSideExtra
                ]),
              ],
            )
          : Column(
              children: [
                Image.asset(
                  widget.photoPath,
                  width: 300,
                  alignment: Alignment.center,
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 25),
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        widget.description,
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'nidsans',
                        ),
                        maxLines: 8,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    widget.textSideExtra,
                  ],
                ),
              ],
            ),
    );
  }
}
