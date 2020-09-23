import 'package:flutter/material.dart';
import '../globals/dimensions.dart';
import '../globals/styles.dart';

class BuildColumn extends StatefulWidget {
  final List<List<String>> data;
  BuildColumn(this.data);

  State<StatefulWidget> createState() => BuildColumnState();
}

class BuildColumnState extends State<BuildColumn> {

  Widget build(context) {
    return Padding(
        padding: DIM_BCOLUMN_PADDING_1,
        child: Column(children: <Widget>[
          Padding(
              padding: DIM_BCOLUMN_PADDING_2,
              child: Row(children: <Widget>[
                Container(
                  height: DIM_BCOLUMN_CONTAINER_HEIGHT,
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width *
                      DIM_BCOLUMN_CONTAINER_WIDTH,
                  child: Card(
                      child: Column(children: <Widget>[
                    Text(
                     widget.data[0][0],
                      style: STYLE_BCOLUMN_STATS_VALUE,
                    ),
                    Text(
                      widget.data[0][1],
                      style: STYLE_BCOLUMN_STATS_NAME,
                    )
                  ])),
                ),
                Container(
                  height: DIM_BCOLUMN_CONTAINER_HEIGHT,
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width *
                      DIM_BCOLUMN_CONTAINER_WIDTH,
                  child: Card(
                      child: Column(children: <Widget>[
                    Text(widget.data[1][0],
                        style: STYLE_BCOLUMN_STATS_VALUE),
                    Text(widget.data[1][1], style: STYLE_BCOLUMN_STATS_NAME)
                  ])),
                )
              ])),
        ]));
  }
}
