import 'package:flutter/material.dart';
import '../globals/colors.dart';
import '../globals/dimensions.dart';
import '../globals/constants.dart';
import '../globals/styles.dart';

class SlidingUpForSort extends StatelessWidget {
  Widget build(context) {
    return SingleChildScrollView(
        child: Padding(
            padding: SORT_PADDING_TYPE_3,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: SORT_PADDING_TYPE_4,
                    child: Text(SORT_SP_TITLE, style: STYLE_SORT_SP_TITLE),
                  ),
                  Padding(
                      padding: SORT_PADDING_TYPE_5,
                      child: Container(
                        width: double.infinity,
                        height: SORT_CONTAINER_HEIGHT,
                        child: RaisedButton(
                            color: WHITE_PALETTE,
                            child: Text(SORT_TYPE_1, style: STYLE_SORT_TYPE),
                            onPressed: () {}),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(BOXSHADOW_OPACITY),
                            spreadRadius: SPREAD_RADIUS,
                            blurRadius: BLUR_RADIUS,
                            offset: BSHADOW, // changes position of shadow
                          ),
                        ]),
                      )),
                  Padding(
                      padding: SORT_PADDING_TYPE_5,
                      child: Container(
                        width: double.infinity,
                        height: SORT_CONTAINER_HEIGHT,
                        child: RaisedButton(
                            color: WHITE_PALETTE,
                            child: Text(SORT_TYPE_2, style: STYLE_SORT_TYPE),
                            onPressed: () {}),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(BOXSHADOW_OPACITY),
                            spreadRadius: SPREAD_RADIUS,
                            blurRadius: BLUR_RADIUS,
                            offset: BSHADOW, // changes position of shadow
                          ),
                        ]),
                      )),
                  Padding(
                      padding: SORT_PADDING_TYPE_5,
                      child: Container(
                        width: double.infinity,
                        height: SORT_CONTAINER_HEIGHT,
                        child: RaisedButton(
                            color: WHITE_PALETTE,
                            child: Text(SORT_TYPE_3, style: STYLE_SORT_TYPE),
                            onPressed: () {}),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(BOXSHADOW_OPACITY),
                            spreadRadius: SPREAD_RADIUS,
                            blurRadius: BLUR_RADIUS,
                            offset: BSHADOW, // changes position of shadow
                          ),
                        ]),
                      )),
                  Padding(
                      padding: SORT_PADDING_TYPE_5,
                      child: Container(
                        width: double.infinity,
                        height: SORT_CONTAINER_HEIGHT,
                        child: RaisedButton(
                            color: WHITE_PALETTE,
                            child: Text(SORT_TYPE_4, style: STYLE_SORT_TYPE),
                            onPressed: () {}),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(BOXSHADOW_OPACITY),
                            spreadRadius: SPREAD_RADIUS,
                            blurRadius: BLUR_RADIUS,
                            offset: BSHADOW, // changes position of shadow
                          ),
                        ]),
                      )),
                  Padding(
                      padding: SORT_PADDING_TYPE_5,
                      child: Container(
                        width: double.infinity,
                        height: SORT_CONTAINER_HEIGHT,
                        child: RaisedButton(
                            color: WHITE_PALETTE,
                            child: Text(SORT_TYPE_5, style: STYLE_SORT_TYPE),
                            onPressed: () {}),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(BOXSHADOW_OPACITY),
                            spreadRadius: SPREAD_RADIUS,
                            blurRadius: BLUR_RADIUS,
                            offset: BSHADOW, // changes position of shadow
                          ),
                        ]),
                      )),
                  Padding(
                      padding: SORT_PADDING_TYPE_5,
                      child: Container(
                        width: double.infinity,
                        height: SORT_CONTAINER_HEIGHT,
                        child: RaisedButton(
                            color: WHITE_PALETTE,
                            child: Text(SORT_TYPE_6, style: STYLE_SORT_TYPE),
                            onPressed: () {}),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(BOXSHADOW_OPACITY),
                            spreadRadius: SPREAD_RADIUS,
                            blurRadius: BLUR_RADIUS,
                            offset: BSHADOW, // changes position of shadow
                          ),
                        ]),
                      )),
                  Padding(
                      padding: SORT_PADDING_TYPE_5,
                      child: Container(
                        width: double.infinity,
                        height: SORT_CONTAINER_HEIGHT,
                        child: RaisedButton(
                            color: WHITE_PALETTE,
                            child: Text(SORT_TYPE_7, style: STYLE_SORT_TYPE),
                            onPressed: () {}),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(BOXSHADOW_OPACITY),
                            spreadRadius: SPREAD_RADIUS,
                            blurRadius: BLUR_RADIUS,
                            offset: BSHADOW, // changes position of shadow
                          ),
                        ]),
                      ))
                ])));
  }
}
