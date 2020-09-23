import 'package:flutter/material.dart';
import '../globals/dimensions.dart';
import '../globals/config.dart';
import '../globals/styles.dart';
import '../globals/constants.dart';
import '../widgets/Dots.dart';
import '../widgets/drawer.dart';
import '../widgets/areaAndLineChart.dart';
import '../utils/func.dart';
import '../widgets/barChart.dart';

class Statistics extends StatefulWidget {
  final Map<String, dynamic> countryDetails;
  final int index;

  Statistics(this.countryDetails, this.index);

  @override
  State<StatefulWidget> createState() => StatisticsState();
}

class StatisticsState extends State<Statistics> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String _selected = CASE_TYPES[0]['value'];
  String _selected1 = CASE_TYPES[0]['value'];
  Func f = new Func();
  bool panelState = false;

  @override
  void initState() {
    super.initState();
  }

  Widget build(context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: Drawer(
          child: DrawerWidget(),
        ),
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
              Padding(
                  padding: DIM_STATS_PADDING_TYPE_2,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(children: <Widget>[
                          Text(widget.countryDetails['country'] + ' ' + STATS_TITLE, style: STYLE_STATS_TITLE),
                        ]),
                        Padding(
                            padding: DIM_STATS_PADDING_TYPE_3,
                            child: Text(
                              STATS_SUBTITLE,
                              style: STYLE_STATS_SUBTITLE,
                            )),
                        Padding(
                            padding: DIM_STATS_PADDING_TYPE_3,
                            child: Text(
                              STATS_SUB_TITLE,
                              style: STYLE_STATS_SUB_TITLE,
                            )),
                        Padding(
                            padding: DIM_STATS_PADDING_TYPE_4,
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
                                            padding: DIM_STATS_PADDING_TYPE_5,
                                            child: Dots(value['color'])),
                                        Text(
                                          value['value'],
                                          style: STYLE_STATS_DDOWN_VALUE,
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
                                SizedBox(width: STATS_SBOX_WIDTH),
                                Expanded(
                                    child: DropdownButton(
                                  value: _selected1,
                                  items: CASE_TYPES.map((value) {
                                    return DropdownMenuItem(
                                      value: value['value'],
                                      child: Row(children: <Widget>[
                                        Padding(
                                            padding: DIM_STATS_PADDING_TYPE_5,
                                            child: Dots(value['color'])),
                                        Text(
                                          value['value'],
                                          style: STYLE_STATS_DDOWN_VALUE,
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
                            height: STATS_CHEIGHT,
                            child: AreaAndLineChart(_selected, _selected1, widget.index)),
                        Padding(
                            padding: DIM_STATS_PADDING_TYPE_3,
                            child: Text(
                              STATS_SUBTITLE_2,
                              style: STYLE_STATS_SUBTITLE_2,
                            )),
                        Padding(
                            padding: DIM_STATS_PADDING_TYPE_3,
                            child: Text(
                              STATS_SUB_TITLE_2,
                              style: STYLE_STATS_SUB_TITLE,
                            )),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            height: STATS_CHEIGHT,
                            child: BarChart(widget.index)),
                      ])),
            ],
          )),
        ));
  }
}
