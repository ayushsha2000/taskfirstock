// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:firstocktask/screens/pages/home/model.dart';
import 'package:firstocktask/screens/pages/home/views/markets/info_list.dart';
import 'package:firstocktask/screens/pages/home/views/markets/markets_cards.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MarketsChart extends StatefulWidget {
  const MarketsChart({super.key});

  @override
  State<MarketsChart> createState() => _MarketsChartState();
}

class _MarketsChartState extends State<MarketsChart> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(300, 400),
      ChartData(600, 410),
      ChartData(300, 405),
      ChartData(800, 410),
      ChartData(600, 350),
      ChartData(800, 370),
      ChartData(987, 500),
      ChartData(897, 390),
      ChartData(879, 450),
    ];
    final List<Color> color = <Color>[];
    color.add(Colors.blue[50]!);
    color.add(Colors.blue[200]!);
    color.add(Colors.blue);

    final List<double> stops = <double>[];
    stops.add(0.0);
    stops.add(0.5);
    stops.add(1.0);

    final LinearGradient gradientColors =
        LinearGradient(colors: color, stops: stops);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InfoList(chartData: chartData, gradientColors: gradientColors),
            MarketCard()
          ]),
    );
  }
}
