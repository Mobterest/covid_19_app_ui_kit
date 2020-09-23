import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../globals/constants.dart';
import '../globals/dimensions.dart';
import '../globals/styles.dart';
import '../globals/config.dart';

final List<Map<String, dynamic>> dataList = [
  {
    'image': IMAGE_1,
    'number': POSITION_1,
    'title': TITLE1,
    'subtitle': SUBTITLE1
  },
  {
    'image': IMAGE_2,
    'number': POSITION_2,
    'title': TITLE2,
    'subtitle': SUBTITLE2
  },
  {
    'image': IMAGE_3,
    'number': POSITION_3,
    'title': TITLE3,
    'subtitle': SUBTITLE3
  }
];

final List<Widget> contentSlider = dataList.map((item) {
  return Column(children: <Widget>[
    Image.asset(
      item['image'],
      width: DIM_IMAGE_WIDTH,
      height: DIM_IMAGE_HEIGHT,
    ),
    Text(item['number'], style: STYLE_POSITION_TEXT),
    Text(item['title'], style: STYLE_TITLE_TEXT),
    Padding(
        padding: DIM_CAROUSEL_PADDING_1,
        child: Center(child: Text(item['subtitle']))),
  ]);
}).toList();

class CSliders extends StatelessWidget {
  Widget build(context) {
    return CarouselSlider(
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height * CAROUSEL_HEIGHT,
          autoPlay: true,
          enlargeCenterPage: true,
        ),
        items: contentSlider);
  }
}
