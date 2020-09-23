import 'package:flutter/material.dart';
import '../globals/constants.dart';
import '../globals/colors.dart';
import '../globals/config.dart';
import '../globals/dimensions.dart';
import '../globals/styles.dart';
import '../pages/map.dart';
import '../pages/global.dart';
import '../pages/about.dart';
import '../pages/notifications.dart';
import '../pages/reportACase.dart';
import '../utils/func.dart';
import '../globals/config.dart';

class DrawerWidget extends StatefulWidget {
  State<StatefulWidget> createState() => DrawerWidgetState();
}

class DrawerWidgetState extends State<DrawerWidget> {
  bool mode = false;
  Func f = new Func();

  @override
  void initState() {
    super.initState();
  }

  Widget build(context) {
    return Container(
        color: RED_PALETTE,
        child: Padding(
            padding: DIM_DRAWER_PADDING_1,
            child: ListView(children: <Widget>[
              Padding(
                  padding: DIM_DRAWER_PADDING_2,
                  child: ListTile(
                    title: Text(HEADER_TEXT, style: STYLE_DRAWER_HEADER_TEXT),
                    subtitle: Text(HEADER_DESCRIPTION,
                        style: STYLE_DRAWER_HEADER_DESCRIPTION),
                  )),
              Padding(
                  padding: DIM_DRAWER_PADDING_3,
                  child: Row(children: <Widget>[
                    CircleAvatar(
                      radius: CIRCLEAVATAR_RADIUS,
                      child: Center(
                          child: Image.asset(AVATAR,
                              width: AVATAR_WIDTH, height: AVATAR_HEIGHT)),
                      backgroundColor: LIGHT_PALETTE,
                    ),
                    Padding(
                        padding: DIM_DRAWER_PADDING_4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              GREETING + USERNAME,
                              style: STYLE_DRAWER_GREETINGS,
                            ),
                            Text(COUNTRY, style: STYLE_DRAWER_COUNTRY)
                          ],
                        )),
                  ])),
              ListTile(
                title: Text(MENUTITLE_1, style: STYLE_MENUTITLE),
              ),
              ListTile(
                  leading: Icon(Icons.language, color: LIGHT_PALETTE),
                  title: Text(
                    MENUITEM_2,
                    style: STYLE_MENUITEM,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Global()));
                  }),
              ListTile(
                  leading: Icon(Icons.location_on, color: LIGHT_PALETTE),
                  title: Text(
                    MENUITEM_1,
                    style: STYLE_MENUITEM,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Map(defaultMarkers)));
                  }),
              ListTile(
                  leading: ClipOval(
                      child: Material(
                          color: ORANGE_PALETTE, // button color
                          child: Padding(
                              padding: DIM_DRAWER_PADDING_5,
                              child: Icon(
                                Icons.replay,
                                color: LIGHT_PALETTE,
                              )))),
                  title: Text(
                    MENUITEM_3,
                    style: STYLE_MENUITEM,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Global()));
                  }),
              ListTile(
                  leading: Icon(Icons.notifications, color: LIGHT_PALETTE),
                  title: Text(
                    MENUITEM_4,
                    style: STYLE_MENUITEM,
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Notifications()));
                  }),
              ListTile(
                  leading: Icon(Icons.report, color: LIGHT_PALETTE),
                  title: Text(
                    MENUITEM_5,
                    style: STYLE_MENUITEM,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ReportCase()));
                  }),
              ListTile(
                leading: Icon(Icons.alternate_email, color: LIGHT_PALETTE),
                title: Text(
                  MENUITEM_6,
                  style: STYLE_MENUITEM,
                ),
                onTap: () {
                  f.launchURL();
                },
              ),
              ListTile(
                title: Text(MENUTITLE_2, style: STYLE_MENUTITLE),
              ),
              // SwitchListTile(
              //   activeColor: LIGHT_PALETTE,
              //   title: const Text(MENUITEM_7, style: STYLE_MENUITEM),
              //   value: mode,
              //   onChanged: (bool value) {
              //     setState(() {
              //       mode = value;
              //        Navigator.push(context,
              //             MaterialPageRoute(builder: (context) => Global()));
              //     });
              //   },
              //   secondary: const Icon(Icons.brightness_3, color: LIGHT_PALETTE),
              // ),
              ListTile(
                  leading: Icon(Icons.info_outline, color: LIGHT_PALETTE),
                  title: Text(MENUITEM_8, style: STYLE_MENUITEM),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => About()));
                  })
            ])));
  }
}
