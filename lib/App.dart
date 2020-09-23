import 'package:flutter/material.dart';
import 'globals/colors.dart';
import 'globals/constants.dart';
import 'globals/dimensions.dart';
import 'globals/styles.dart';
import 'widgets/CarouselSlider.dart';
import 'pages/Login.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: FONT_FAMILY),
      home: Builder(
          builder: (context) => Scaffold(
              backgroundColor: LIGHT_PALETTE,
              body: SafeArea(
                  child: Column(
                children: <Widget>[
                  Padding(
                      padding: DIM_PADDING_1,
                      child: Text(INFOR_1, style: STYLE_INTRO_TEXT)),
                  CSliders(),
                  FlatButton(
                    shape: StadiumBorder(),
                    color: RED_PALETTE,
                    child:
                        Text(LANDING_BTN_TEXT, style: STYLE_LANDING_BTN_TEXT),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                  )
                ],
              )))),
      debugShowCheckedModeBanner: false
    );
  }
}
