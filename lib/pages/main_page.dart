import 'package:flutter/material.dart';
import 'package:newtest/pages/about_us.dart';
import 'package:newtest/pages/awards.dart';
import 'package:newtest/pages/home.dart';
import 'package:newtest/pages/team.dart';
import 'package:newtest/widgets/main_app_bar.dart';

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  int index = 0;
  void changeIndex(int index) {
    this.index = index;
    setState(() {});
  }

  Widget getPageWidget() {
    switch (index) {
      case 0:
        return Home(changeIndex);
        break;
      case 1:
        return Awards();
        break;
      case 2:
        return Team();
        break;
      case 3:
        return AboutUs();
        break;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Stack(
        children: [
          getPageWidget(),

          MainAppBar(changeIndex),
        ],
      ),
    );
  }
}
