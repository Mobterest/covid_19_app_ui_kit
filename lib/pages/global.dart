import 'package:flutter/material.dart';
import '../globals/dimensions.dart';
import '../globals/colors.dart';
import '../globals/config.dart';
import '../globals/styles.dart';
import '../globals/constants.dart';
import '../widgets/Dots.dart';
import '../widgets/drawer.dart';
import '../widgets/areaAndLineChart.dart';
import '../widgets/buildColumn.dart';
import '../utils/func.dart';
import '../widgets/slidingUp.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Global extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GlobalState();
}

class GlobalState extends State<Global> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String _selected = CASE_TYPES[0]['value'];
  String _selected1 = CASE_TYPES[0]['value'];
  Func f = new Func();
  bool panelState = false;
  // final GlobalKey<SlidingUpState> stateKey = GlobalKey<SlidingUpState>();

  @override
  void initState() {
    super.initState();
  }

  Widget build(context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: FONT_FAMILY),
       darkTheme: ThemeData(
    brightness: Brightness.dark,
  ),
      home: Scaffold(
        key: scaffoldKey,
        drawer: Drawer(
          child: DrawerWidget(),
        ),
        body: SlidingUpPanel(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(GLOBAL_SPANEL_BORDERRADIUS),
              topLeft: Radius.circular(GLOBAL_SPANEL_BORDERRADIUS)),
          slideDirection: SlideDirection.UP,
          backdropEnabled: true,
          backdropOpacity: BACKDROP_OPAC,
          backdropColor: LIGHT_PALETTE,
          panelSnapping: false,
          padding: DIM_GLOBAL_PADDING_TYPE_1,
          panel: SlidingUp(),
          body: SafeArea(
              child: SingleChildScrollView(
                  child: Stack(
            children: <Widget>[
              Positioned(
                left: DRAWER_POSITION,
                top: DRAWER_POSITION,
                child: IconButton(
                  icon: Icon(Icons.short_text),
                  onPressed: () => scaffoldKey.currentState.openDrawer(),
                ),
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    IMAGE_4,
                    height: DIM_GLOBAL_IMAGE_WIDTH,
                  )),
              Padding(
                  padding: DIM_GLOBAL_PADDING_TYPE_2,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(children: <Widget>[
                          Text(GLOBAL_TITLE, style: STYLE_GLOBAL_TITLE),
                          // IconButton(
                          //   icon: Icon(Icons.arrow_drop_down_circle),
                          //   color: ORANGE_PALETTE,
                          //   onPressed: () {
                          //     setState(() {
                          //        panelState = true;
                          //        stateKey.currentState.updatePanelState(panelState);
                          //     });
                          //   },
                          // )
                        ]),
                        Padding(
                            padding: DIM_GLOBAL_PADDING_TYPE_3,
                            child: Text(
                              GLOBAL_SUBTITLE,
                              style: STYLE_GLOBAL_SUBTITLE,
                            )),
                        Padding(
                            padding: DIM_GLOBAL_PADDING_TYPE_4,
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    child: DropdownButton(
                                  value: _selected,
                                  items: CASE_TYPES.map((value) {
                                    return DropdownMenuItem(
                                      value: value['value'],
                                      child: Row(children: <Widget>[
                                        Padding(
                                            padding: DIM_GLOBAL_PADDING_TYPE_5,
                                            child: Dots(value['color'])),
                                        Text(
                                          value['value'],
                                          style: STYLE_GLOBAL_DDOWN_VALUE,
                                        )
                                      ]),
                                    );
                                  }).toList(),
                                  onChanged: (newValue) {
                                    print(newValue);
                                    setState(() {
                                      _selected = newValue;
                                    });
                                  },
                                )),
                                SizedBox(width: GLOBAL_SBOX_WIDTH),
                                Expanded(
                                    child: DropdownButton(
                                  value: _selected1,
                                  items: CASE_TYPES.map((value) {
                                    return DropdownMenuItem(
                                      value: value['value'],
                                      child: Row(children: <Widget>[
                                        Padding(
                                            padding: DIM_GLOBAL_PADDING_TYPE_5,
                                            child: Dots(value['color'])),
                                        Text(
                                          value['value'],
                                          style: STYLE_GLOBAL_DDOWN_VALUE,
                                        )
                                      ]),
                                    );
                                  }).toList(),
                                  onChanged: (newValue) {
                                    print(newValue);
                                    setState(() {
                                      _selected1 = newValue;
                                    });
                                  },
                                ))
                              ],
                            )),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            height: GLOBAL_CHEIGHT,
                            child: AreaAndLineChart(_selected, _selected1, 0)),
                        BuildColumn([
                          [f.numberFormat(int.parse('765044')), STAT_TCASES],
                          [
                            PLUS + f.numberFormat(int.parse('45601')),
                            STAT_TODAY
                          ]
                        ]),
                        BuildColumn([
                          [f.numberFormat(int.parse('36883')), STAT_DEATHS],
                          [f.numberFormat(int.parse('161753')), STAT_RECOVERIES]
                        ]),
                        BuildColumn([
                          [f.numberFormat(int.parse('566408')), STAT_ACASES],
                          ['4.82' + PERCENT, STAT_FRATE]
                        ]),
                        BuildColumn([
                          [f.numberFormat(int.parse('65')), STAT_NDAYS],
                          ['21.14' + PERCENT, STAT_RRATE]
                        ]),
                        SizedBox(
                          height: GLOBAL_SBOX_HEIGHT,
                        )
                      ])),
              // SlidingUp(stateKey, panelState)
            ],
          ))),
        )),
        debugShowCheckedModeBanner: false,
        );
  }
}
