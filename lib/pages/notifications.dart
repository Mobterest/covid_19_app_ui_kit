import '../globals/colors.dart';
import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../globals/constants.dart';
import '../globals/styles.dart';
import '../globals/dimensions.dart';
import '../widgets/dots.dart';

class Notifications extends StatefulWidget {
  State<StatefulWidget> createState() => NotificationsState();
}

class NotificationsState extends State<Notifications> {
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
          title: Text(MENUITEM_4, style: STYLE_NOTIFICATION_TITLE),
          backgroundColor: LIGHT_PALETTE,
          bottomOpacity: 0.0,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.short_text),
            onPressed: () => scaffoldKey.currentState.openDrawer(),
          )),
      body: SingleChildScrollView(
        child: Container(
            child: buildList()
            ),
      ),
    );
  }

  Column buildList() {
    List<Widget> c = new List<Widget>();
    for(var i = 0; i < 10; i++){
      c.add(
        Card(
                child: ListTile(
                  leading: Dots(RED_PALETTE),
                  title: Text('Lorem Ipsum is simply dummy text', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700)),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Text('Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit',
                   style: TextStyle(fontSize: 11,))),
                  trailing: Icon(Icons.more_vert),
                ),
              )
      );
    }
    return Column(children: c);
  }
}
