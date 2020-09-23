import '../globals/colors.dart';
import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../globals/constants.dart';
import '../globals/styles.dart';
import '../globals/dimensions.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../globals/config.dart';

class ReportCase extends StatefulWidget {
  State<StatefulWidget> createState() => ReportCaseState();
}

class ReportCaseState extends State<ReportCase> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  Widget build(context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: DrawerWidget(),
      ),
      backgroundColor: LIGHT_PALETTE,
      appBar: AppBar(
          iconTheme: IconThemeData(color: BLACK_PALETTE),
          centerTitle: true,
          title: Text(MENUITEM_5, style: STYLE_REPORTCASE_TITLE),
          backgroundColor: LIGHT_PALETTE,
          bottomOpacity: 0.0,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.short_text),
            onPressed: () => scaffoldKey.currentState.openDrawer(),
          )),
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          children: <Widget>[
            Padding(
                padding: DIM_REPORT_CASE_PADDING_TYPE_1,
                child: Text(REPORT_CASE_INFOR, style: STYLE_REPORTCASE_INFOR)),
            FlatButton.icon(
              shape: StadiumBorder(),
              color: RED_PALETTE,
              icon: FaIcon(FontAwesomeIcons.phoneAlt,
                  color: LIGHT_PALETTE, size: 16),
              label:
                  Text(REPORTCASE_BTN_TEXT, style: STYLE_REPORT_CASE_BTN_TEXT),
              onPressed: () {
                launch(LAUNCH_CALL);
              },
            )
          ],
        )),
      ),
    );
  }
}
