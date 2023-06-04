import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:myapp/design/cities.dart';
import 'package:myapp/design/stat.dart';

class Area1Page extends StatelessWidget {
  const Area1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade200,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 24.0),
            ClipOval(
              child: Image.asset(
                'assets/design/images/heirloom-tomatoes.jpg',
                width: 120.0,
                height: 120.0,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 24.0),
            Text(
              'Sfax',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Zone 1',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 24.0),
            Text(
              'Informations',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 24.0),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: HumidityChart.withSampleData(),
                          ),
                          Text(
                            'Humidity',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: TemperatureChart.withSampleData(),
                          ),
                          Text(
                            'Temperature',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CitiesPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    padding:
                        const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                  ),
                  child: Text(
                    'Back',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const StatPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    padding:
                        const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                  ),
                  child: Text(
                    'Statistics',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HumidityChart extends StatelessWidget {
  final List<charts.Series<TimeSeriesData, DateTime>> seriesList;
  final bool animate;

  HumidityChart(this.seriesList, {required this.animate});

  factory HumidityChart.withSampleData() {
    return HumidityChart(
      generateHumidityData(),
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: charts.TimeSeriesChart(
        seriesList,
        animate: animate,
        domainAxis: const charts.DateTimeAxisSpec(
          tickFormatterSpec: charts.AutoDateTimeTickFormatterSpec(
            day: charts.TimeFormatterSpec(
              format: 'd',
              transitionFormat: 'MM/dd',
            ),
          ),
        ),
        primaryMeasureAxis: const charts.NumericAxisSpec(
          tickProviderSpec: const charts.BasicNumericTickProviderSpec(
            desiredTickCount: 5,
          ),
        ),
        behaviors: [
          charts.ChartTitle(
            '',
            behaviorPosition: charts.BehaviorPosition.start,
            titleOutsideJustification: charts.OutsideJustification.middleDrawArea,
            innerPadding: 0,
            outerPadding: 0,
          ),
        ],
      ),
    );
  }
}

class TemperatureChart extends StatelessWidget {
  final List<charts.Series<TimeSeriesData, DateTime>> seriesList;
  final bool animate;

  TemperatureChart(this.seriesList, {required this.animate});

  factory TemperatureChart.withSampleData() {
    return TemperatureChart(
      generateTemperatureData(),
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: charts.TimeSeriesChart(
        seriesList,
        animate: animate,
        domainAxis: const charts.DateTimeAxisSpec(
          tickFormatterSpec: charts.AutoDateTimeTickFormatterSpec(
            day: charts.TimeFormatterSpec(
              format: 'd',
              transitionFormat: 'MM/dd',
            ),
          ),
        ),
        primaryMeasureAxis: const charts.NumericAxisSpec(
          tickProviderSpec: const charts.BasicNumericTickProviderSpec(
            desiredTickCount: 5,
          ),
        ),
        behaviors: [
          charts.ChartTitle(
            '',
            behaviorPosition: charts.BehaviorPosition.start,
            titleOutsideJustification: charts.OutsideJustification.middleDrawArea,
            innerPadding: 0,
            outerPadding: 0,
          ),
        ],
      ),
    );
  }
}

class TimeSeriesData {
  final DateTime time;
  final double value;

  TimeSeriesData(this.time, this.value);
}

List<charts.Series<TimeSeriesData, DateTime>> generateTemperatureData() {
  final List<TimeSeriesData> data = [
    TimeSeriesData(DateTime(2023, 5, 28), 25.0),
    TimeSeriesData(DateTime(2023, 5, 29), 26.0),
    TimeSeriesData(DateTime(2023, 5, 30), 27.0),
    TimeSeriesData(DateTime(2023, 5, 31), 26.5),
    TimeSeriesData(DateTime(2023, 6, 1), 28.0),
    TimeSeriesData(DateTime(2023, 6, 2), 29.0),
    TimeSeriesData(DateTime(2023, 6, 3), 27.5),
  ];

  return [
    charts.Series<TimeSeriesData, DateTime>(
      id: 'Temperature',
      colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      domainFn: (TimeSeriesData dataPoint, _) => dataPoint.time,
      measureFn: (TimeSeriesData dataPoint, _) => dataPoint.value,
      data: data,
    ),
  ];
}

List<charts.Series<TimeSeriesData, DateTime>> generateHumidityData() {
  final List<TimeSeriesData> data = [
    TimeSeriesData(DateTime(2023, 5, 28), 60.0),
    TimeSeriesData(DateTime(2023, 5, 29), 65.0),
    TimeSeriesData(DateTime(2023, 5, 30), 70.0),
    TimeSeriesData(DateTime(2023, 5, 31), 75.0),
    TimeSeriesData(DateTime(2023, 6, 1), 80.0),
    TimeSeriesData(DateTime(2023, 6, 2), 75.0),
    TimeSeriesData(DateTime(2023, 6, 3), 70.0),
  ];

  return [
    charts.Series<TimeSeriesData, DateTime>(
      id: 'Humidity',
      colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
      domainFn: (TimeSeriesData dataPoint, _) => dataPoint.time,
      measureFn: (TimeSeriesData dataPoint, _) => dataPoint.value,
      data: data,
    ),
  ];
}
