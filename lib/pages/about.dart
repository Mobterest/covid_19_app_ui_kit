import '../globals/colors.dart';
import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../globals/constants.dart';
import '../globals/styles.dart';
import '../globals/dimensions.dart';

class About extends StatefulWidget {
  State<StatefulWidget> createState() => AboutState();
}

class AboutState extends State<About> {
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
          title: Text(MENUITEM_8, style: STYLE_ABOUT_TITLE),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              ListTile(
                title: Text(HEADER_TEXT, style: STYLE_ABOUT_HEADER_TEXT),
                subtitle: Text(HEADER_DESCRIPTION,
                    style: STYLE_ABOUT_HEADER_DESCRIPTION),
              ),
              Padding(
                  padding: DIM_ABOUT_PADDING_TYPE_1,
                  child: Text(ABOUT_INFOR, style: STYLE_ABOUT_INFOR))
            ])),
      ),
    );
  }
}
