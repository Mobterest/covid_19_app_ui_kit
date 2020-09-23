import 'package:flutter/material.dart';
import '../globals/colors.dart';
import '../globals/constants.dart';
import '../globals/dimensions.dart';
import '../globals/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './Global.dart';
import '../globals/config.dart';

class Login extends StatelessWidget {
  Widget build(context) {
    return Scaffold(
        backgroundColor: RED_PALETTE,
        body: SafeArea(
            child: Container(
                child: Column(children: <Widget>[
          Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                IMAGE_4,
                height: DIM_LOGIN_IMAGE_WIDTH,
              )),
          Padding(
              padding: DIM_LOGIN_PADDING_1,
              child: Text(HEADER_TEXT, style: STYLE_LOGIN_HEADER_TEXT)),
          Padding(
              padding: DIM_LOGIN_PADDING_2,
              child: Text(LOGIN_TITLE_TEXT, style: STYLE_LOGIN_TITLE_TEXT)),
          Padding(
              padding: DIM_LOGIN_PADDING_3,
              child:
                  Text(LOGIN_SUBTITLE_TEXT, style: STYLE_LOGIN_SUBTITLE_TEXT)),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            RaisedButton.icon(
              color: LIGHT_PALETTE,
              icon: FaIcon(FontAwesomeIcons.facebookF, color: BLACK_PALETTE, size: 16),
              onPressed: () {},
              label: Container(
                  width: MediaQuery.of(context).size.width * LOGIN_BTN_WIDTH,
                  child: Text(SOCIAL_MEDIA_1)),
            ),
            SizedBox(width: LOGIN_SIZED_BOX),
            RaisedButton.icon(
              color: LIGHT_PALETTE,
              icon: FaIcon(FontAwesomeIcons.google, color: RED_PALETTE, size: 16),
              onPressed: () {},
              label: Container(
                  width: MediaQuery.of(context).size.width * LOGIN_BTN_WIDTH,
                  child: Text(SOCIAL_MEDIA_2)),
            )
          ]),
          Padding(
              padding: DIM_LOGIN_PADDING_4,
              child: Text(LOGIN_SMALL_TEXT,
                  textAlign: TextAlign.center, style: STYLE_LOGIN_SMALL_TEXT)),
          Padding(
              padding: DIM_LOGIN_PADDING_5,
              child: OutlineButton(
                  child: Text(
                    GUEST,
                    style: STYLE_GUEST_TEXT,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Global()));
                  },
                  borderSide: BorderSide(color: LIGHT_PALETTE),
                  shape: StadiumBorder()))
          //link
        ]))));
  }
}
