import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import '../utils/dataModel.dart';
import '../utils/func.dart';
import '../globals/config.dart';

class AreaAndLineChart extends StatefulWidget {
  final String _firstSelect;
  final String _secondSelect;
  final int index;

  AreaAndLineChart(this._firstSelect, this._secondSelect, this.index);

  State<StatefulWidget> createState() => AreaAndLineChartState();
}

class AreaAndLineChartState extends State<AreaAndLineChart> {
  Func f = new  Func();

  @override
  Widget build(BuildContext context) {
    return new charts.LineChart(_createSampleData(),
        animate: true,
        customSeriesRenderers: [
          new charts.LineRendererConfig(
              customRendererId: 'customArea', includeArea: true, stacked: true),
        ]);
  }

  /// Create one series with sample hard coded data.
   List<charts.Series<DataModel, int>> _createSampleData() {
    //First selection
    final firstSelectionData = coronaAffectedCountries[widget.index][f.generateCaseType(widget._firstSelect)];

    //Second selection
    var secondSelectionData = coronaAffectedCountries[widget.index][f.generateCaseType(widget._secondSelect)];

    return [
      new charts.Series<DataModel, int>(
        id: 'Selection 1',
        colorFn: (_, __) => f.generateCaseColor(widget._firstSelect),
        domainFn: (DataModel sales, _) => sales.year,
        measureFn: (DataModel sales, _) => sales.sales,
        data: firstSelectionData,
      )..setAttribute(charts.rendererIdKey, 'customArea'),
      new charts.Series<DataModel, int>(
        id: 'Selection 2',
        colorFn: (_, __) => f.generateCaseColor(widget._secondSelect),
        domainFn: (DataModel sales, _) => sales.year,
        measureFn: (DataModel sales, _) => sales.sales,
        data: secondSelectionData,
      ),
    ];
  }
}
