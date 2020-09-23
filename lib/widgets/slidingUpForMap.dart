import 'package:flutter/material.dart';
import '../globals/colors.dart';
import 'package:flag/flag.dart';
import '../globals/dimensions.dart';
import '../globals/constants.dart';
import '../widgets/buildColumn.dart';
import '../utils/func.dart';
import '../globals/config.dart';
import '../globals/styles.dart';

class SlidingUpForMap extends StatelessWidget {
  Widget build(context) {
    Func f = new Func();

    return SingleChildScrollView(
        child: Column(children: <Widget>[
      Icon(
        Icons.arrow_drop_up,
        color: RED_PALETTE,
        size: SLIDING_ICON_SIZE,
      ),
      Row(children: <Widget>[
        Flag(DEFAULT_COUNTRY_CODE,
            height: SPANEL_FLAG_WIDTH1, width: SPANEL_FLAG_HEIGHT1),
        Padding(
            padding: DIM_SPANEL2_PADDING_TYPE_1,
            child: Column(children: <Widget>[
              Text(
                COUNTRY,
                style: STYLE_SPANEL2_COUNTRY,
              ),
              Text(
                DEFAULT_CITY,
                style: STYLE_SPANEL2_CITY,
              )
            ])),
        Spacer(),
        Text(
          LASTTIME,
          style: STYLE_SPANEL2_TIME,
        ),
        Padding(
            padding: DIM_SPANEL2_PADDING_TYPE_2,
            child: new Container(
              height: SPANEL_2_CONTAINER_HEIGHT,
              width: SPANEL2_CONTAINER_WIDTH,
              child: Center(
                  child: Text(DEFAULT_CASES, style: STYLE_SPANEL2_CASES)),
              decoration: BoxDecoration(
                  color: LIGHT_PALETTE,
                  border: spanel2ContainerBorder,
                  borderRadius: SPANEL2_CONTAINER_RADIUS),
            ))
      ]),
      BuildColumn([
        [f.numberFormat(int.parse('765044')), STAT_TCASES],
        [PLUS + f.numberFormat(int.parse('45601')), STAT_TODAY]
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
      ])
    ]));
  }
}
