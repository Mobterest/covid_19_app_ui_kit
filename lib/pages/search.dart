import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import 'package:floating_search_bar/floating_search_bar.dart';
import '../globals/colors.dart';
import '../globals/dimensions.dart';
import '../globals/constants.dart';
import 'package:flag/flag.dart';
import '../globals/styles.dart';
import '../utils/func.dart';
import '../globals/config.dart';
import '../pages/map.dart';

class Search extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SearchState();
}

class SearchState extends State<Search> {
  Func f = new Func();
  List result = [];
  List data = [];

  @override
  void initState() {
    super.initState();
    data = searchCountries;
  }

  Widget build(context) {
    return Scaffold(
        body: FloatingSearchBar.builder(
      pinned: true,
      padding: SEARCH_PADDING_TYPE_3,
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Map(searchMarkers)));
              },
              trailing: Wrap(
                spacing: SEARCH_SPACING,
                children: <Widget>[
                  Text(
                    f.numberFormat(int.parse(data[index]['cases'])),
                    style: STYLE_SEARCH_CASES,
                  ),
                  Icon(Icons.more_vert, color: BLACK_PALETTE),
                ],
              ),
              leading: Padding(
                  padding: DIM_SLIDING_PANEL_PADDING_1,
                  child: Flag(data[index]['code'],
                      height: SPANEL_FLAG_WIDTH, width: SPANEL_FLAG_HEIGHT)),
              title:
                  Text(data[index]['country'], style: STYLE_SPANEL_DEFAULT_C),
              subtitle: Text(data[index]['time'], style: STYLE_SPANEL_TIMEAGO)),
        );
      },
      drawer: Drawer(
        child: DrawerWidget(),
      ),
      trailing: Icon(Icons.filter_list, color: RED_PALETTE),
      onChanged: (String value) {
        if (value == '') {
          setState(() {
            data = searchCountries;
          });
        } else {
          result = [];
          searchCountries.forEach((userDetail) {
            if (userDetail['country']
                .toUpperCase()
                .contains(value.toUpperCase())) {
              result.add(userDetail);
            }
          });
          setState(() {
            data = result;
          });
        }
      },
      onTap: () {},
      decoration: InputDecoration.collapsed(
          hintText: SREGIONS, hintStyle: STYLE_SEARCH_HTEXT),
    ));
  }
}
