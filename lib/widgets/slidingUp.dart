import 'package:flutter/material.dart';
import '../globals/colors.dart';
import 'package:flag/flag.dart';
import '../globals/dimensions.dart';
import '../globals/constants.dart';
import '../globals/styles.dart';
import '../globals/config.dart';
import '../pages/statistics.dart';

class SlidingUp extends StatelessWidget {
  Widget build(context) {
    return SingleChildScrollView(
        child: Column(children: <Widget>[
      Icon(
        Icons.arrow_drop_up,
        color: RED_PALETTE,
        size: SLIDING_ICON_SIZE,
      ),
      Text(
        SLIDING_HEADER,
        style: STYLE_SLIDING_HEADER,
      ),
      Column(children: _buildList(context))
    ]));
  }

  List<Card> _buildList(BuildContext context) {
    List<Card> x = [];
    for (var i = 1; i < coronaAffectedCountries.length; i++) {
      x.add(Card(
        child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Statistics(coronaAffectedCountries[i], i)));
            },
            child: ListTile(
                leading: Padding(
                    padding: DIM_SLIDING_PANEL_PADDING_1,
                    child: Flag(coronaAffectedCountries[i]['flag'],
                        height: SPANEL_FLAG_WIDTH, width: SPANEL_FLAG_HEIGHT)),
                title: Text(coronaAffectedCountries[i]['country'],
                    style: STYLE_SPANEL_DEFAULT_C),
                subtitle: Text(coronaAffectedCountries[i]['time'],
                    style: STYLE_SPANEL_TIMEAGO))),
      ));
    }
    return x;
  }
}

// class SlidingUp extends StatelessWidget {
//   Widget build(context) {
//     return SlidingUpPanel(
//       borderRadius: BorderRadius.only(
//           topRight: Radius.circular(40), topLeft: Radius.circular(40)),
//       slideDirection: SlideDirection.UP,
//       backdropEnabled: true,
//       backdropOpacity: 0.6,
//       backdropColor: LIGHT_PALETTE,
//       panel: Center(
//         child: Text("This is the sliding Widget"),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:sliding_up_panel/sliding_up_panel.dart';
// import '../globals/colors.dart';

// class SlidingUp extends StatefulWidget {
//   bool panelState;

//   SlidingUp(Key key, this.panelState) : super(key: key);

//   State<StatefulWidget> createState() => SlidingUpState();
// }

// class SlidingUpState extends State<SlidingUp> {

//   @override
//   void initState() {
//     super.initState();
//   }

//   void updatePanelState(bool p) {
//     print(p);
//     setState(() {
//       widget.panelState = p;
//     });
//   }

//   Widget build(context) {
//     return FutureBuilder<PanelState>(
//         future: getDetails(),
//         builder: (context, AsyncSnapshot<PanelState> snapshot) {
//           print('hello');
//           print(snapshot.data);
//           PanelState x = snapshot.data;
//           return SlidingUpPanel(
//             defaultPanelState: PanelState.OPEN,
//             //slideDirection: SlideDirection.UP,
//             backdropEnabled: true,
//             backdropOpacity: 0.6,
//             backdropColor: LIGHT_PALETTE,
//             panel: Center(
//               child: Text("This is the sliding Widget"),
//             ),
//           );
//         });
//   }

//   Future<PanelState> getDetails() async {
//     Future<String>.delayed(Duration(seconds: 2));
//     if (widget.panelState == false) {
//       print("It should be closed");
//        return PanelState.CLOSED;
//     } else if(widget.panelState == true){
//       print('it should be open');
//        return PanelState.OPEN;
//     } else {
//        print('not set yet');
//        return PanelState.CLOSED;
//     }
//     //return PanelState.CLOSED;
//   }
// }
