import 'package:firstocktask/screens/pages/home/model.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PortfolioPerformance extends StatelessWidget {
  const PortfolioPerformance({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text('Portfolio',
              style: Theme.of(context).textTheme.headlineMedium,
              ), Text('Performance', 
              style: Theme.of(context).textTheme.subtitle1,
              )],
            ),
            Container( 
              child: LineChartWidget(),
            )

          ],
        ),
      ),
    );
  }
}


class LineChartWidget extends StatelessWidget {
  
  
   LineChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
    return AspectRatio(
      aspectRatio: 2,
      child: LineChart(
        LineChartData(
            lineBarsData: [
              LineChartBarData(
                // gradient: gradientColors,
                spots: point.map((point) => FlSpot(point.x??0.0, point.y??0.0)).toList(),
                isCurved: false,
                dotData: FlDotData(
                  show: false,
                ),
                color: Colors.blue
              ),
            ],
            borderData: FlBorderData(
                border: const Border(bottom: BorderSide(), left: BorderSide())),
            gridData: FlGridData(show: false),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            ),
          ),
      ),
    );
  }
}