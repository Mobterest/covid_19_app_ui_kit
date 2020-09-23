import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../globals/colors.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../widgets/slidingUpForMap.dart';
import '../widgets/slidingUpForSort.dart';
import '../globals/dimensions.dart';
import '../pages/search.dart';
import '../globals/constants.dart';
import '../globals/styles.dart';
import '../globals/config.dart';

class Map extends StatefulWidget {
  final List<Marker> marker;

  Map(this.marker);
  @override
  State<StatefulWidget> createState() => MapState();
}

class MapState extends State<Map> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  bool isVisible = true;
  bool isVisibleSort = false;
  List<Marker> marker = [];
  LatLng _center;

  @override
  void initState() {
    super.initState();
    setState(() {
      isVisible = true;
      isVisibleSort = false;
      marker = widget.marker;
      _center = widget.marker[0].position;
    });
  }

  GoogleMapController mapController;

  Widget build(context) {
    void _onMapCreated(GoogleMapController controller) {
      mapController = controller;
    }

    return Scaffold(
        key: scaffoldKey,
        drawer: Drawer(
          child: DrawerWidget(),
        ),
        body: SlidingUpPanel(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(GLOBAL_SPANEL_BORDERRADIUS),
                topLeft: Radius.circular(GLOBAL_SPANEL_BORDERRADIUS)),
            slideDirection: SlideDirection.UP,
            defaultPanelState:
                isVisible == true ? PanelState.CLOSED : PanelState.CLOSED,
            backdropEnabled: true,
            backdropOpacity: BACKDROP_OPAC,
            backdropColor: LIGHT_PALETTE,
            panelSnapping: false,
            padding: DIM_MAP_PADDING_TYPE_1,
            panel: Column(children: <Widget>[
              Visibility(visible: isVisible, child: SlidingUpForMap()),
              Visibility(visible: isVisibleSort, child: SlidingUpForSort())
            ]),
            body: SafeArea(
                child: Stack(children: <Widget>[
              Container(
                  child: GoogleMap(
                onMapCreated: _onMapCreated,
                markers: Set.from(marker),
                initialCameraPosition: CameraPosition(
                  target: marker[0].position,
                  zoom: GOOGLE_MAP_ZOOM,
                ),
              )),
              Padding(
                  padding: MAP_PADDING_TYPE_1,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Positioned(
                          left: DRAWER_POSITION,
                          top: DRAWER_POSITION,
                          child: IconButton(
                            icon: Icon(Icons.short_text),
                            onPressed: () =>
                                scaffoldKey.currentState.openDrawer(),
                          ),
                        ),
                        Padding(
                            padding: MAP_PADDING_TYPE_2,
                            child: Text(MAP_TITLE, style: STYLE_MAP_TITLE)),
                        Spacer(),
                        Padding(
                            padding: MAP_PADDING_TYPE_3,
                            child: Column(children: <Widget>[
                              ClipOval(
                                  child: Material(
                                      color: RED_PALETTE,
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.search,
                                          color: LIGHT_PALETTE,
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Search()));
                                        },
                                      ))),
                              Padding(
                                  padding: MAP_PADDING_TYPE_4,
                                  child: ClipOval(
                                      child: Material(
                                          color: RED_PALETTE,
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.filter_list,
                                              color: LIGHT_PALETTE,
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                isVisible = false;
                                                isVisibleSort = true;
                                                marker = sortMarkers;
                                                // _center =
                                                //     sortMarkers[0].position;
                                              });
                                            },
                                          ))))
                            ]))
                      ]))
            ]))));
  }
}
