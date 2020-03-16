import 'package:flutter/material.dart';

class TeamPlayerTile extends StatelessWidget {
  final String name, role, photo;
  final BoxFit boxFit;
  final int width, fontSize;
  final bool webImage;
  TeamPlayerTile(this.name, this.role, this.photo, this.boxFit,
      {this.width, this.fontSize, this.webImage=false});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: width == null ? 325 : width,
              height: width == null ? 325 : width,
              child: webImage
                  ? Image.network(
                      photo,
                      height: 300 - 100 as double,
                      width: 300 as double,
                      fit: boxFit,
                    )
                  :  Image.asset(
                      photo,
                      height: 300 - 100 as double,
                      width: 300 as double,
                      fit: boxFit,
                    ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  Text(
                    name,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'nidsans',
                    ),
                  ),
                  Container(
                    height: 5,
                  ),
                  Text(
                    role,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: fontSize == null ? 24 : fontSize,
                        color: Colors.grey,
                        fontFamily: 'nidsans'),
                  ),
                  Container(
                    height: 20,
                    child: Text(""),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
