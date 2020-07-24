import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:mobile_wallet_app/backend/home.dart';
class homescreen extends StatefulWidget {
  @override
  _homescreenState createState() => _homescreenState();
}
class ClicksPerYear {
  final String year;
  final int clicks;
  final charts.Color color;
  ClicksPerYear(this.year, this.clicks, Color color)
      : this.color = new charts.Color(
      r: color.red, g: color.green, b: color.blue, a: color.alpha);
}
int _counter=10;
var data = [
  new ClicksPerYear('2016', 12, Colors.red),
  new ClicksPerYear('2017', 42, Colors.yellow),
  new ClicksPerYear('2018', _counter, Colors.green),
];
var series = [
  new charts.Series(
    id: 'Clicks',
    domainFn: (ClicksPerYear clickData, _) => clickData.year,
    measureFn: (ClicksPerYear clickData, _) => clickData.clicks,
    colorFn: (ClicksPerYear clickData, _) => clickData.color,
    data: data,
  ),
];

var chart = new charts.BarChart(
  series,
  animate: true,
);
var chartWidget = new Padding(
  padding: new EdgeInsets.all(32.0),
  child: new SizedBox(
    height: 200.0,
    child: chart,
  ),
);
class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: chartWidget,
      ),
    );
  }

}
