import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import '../globals/colors.dart';
import '../utils/dataModel.dart';
import '../globals/config.dart';
import '../utils/func.dart';

class BarChart extends StatefulWidget {
  final int index;

  BarChart(this.index);
  State<StatefulWidget> createState() => BarChartState();
}

class BarChartState extends State<BarChart> {
  Func f = new Func();

  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      _createSampleData(),
      animate: true,
    );
  }

  List<charts.Series<DataModel1, String>> _createSampleData() {
    final data = coronaAffectedCountries[widget.index]['bar'];

    return [
      new charts.Series<DataModel1, String>(
        id: 'Data',
        colorFn: (_, __) => charts.Color.fromHex(code: RED_PALETTE_HEX),
        domainFn: (DataModel1 sales, _) => sales.year,
        measureFn: (DataModel1 sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}
