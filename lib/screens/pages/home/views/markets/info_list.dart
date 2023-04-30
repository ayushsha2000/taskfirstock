import 'package:firstocktask/screens/pages/home/model.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class InfoList extends StatelessWidget {
  const InfoList({
    super.key,
    required this.chartData,
    required this.gradientColors,
  });

  final List<ChartData> chartData;
  final LinearGradient gradientColors;

  @override
  Widget build(BuildContext context) {
    return Container( 
      height: MediaQuery.of(context).size.height/1.4,
      // width: 500,
      child: ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: ((context, index) => Card(
          elevation: 6,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical:16.0, horizontal: 16),
            child: Column( 
              children: [ 
                Row( 
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ 
                    Column( 
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ 
                        Text(dummyData[index].title??'', style: Theme.of(context).textTheme.titleLarge,), 
                        Text(dummyData[index].titleName??'', style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 12),)
                      ],
                    ), 
                    IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_rounded))
                  ],
                ), 
                Row( 
                  children: [ 
                    Text(dummyData[index].price??'',  style: Theme.of(context).textTheme.headline5,), 
                    SizedBox(width: 12.0,),
                    Column( 
                      children: [ 
                        Text(dummyData[index].plus??''), 
                        Text(dummyData[index].minus??'')
                      ],
                    )
                  ],
                ), 
                Container(
                  height: 190,
                  child: SfCartesianChart(
                    plotAreaBackgroundColor: Colors.white, 
                    plotAreaBorderWidth: 0,
                      // primaryYAxis: NumericAxis(labelFormat: '{value}mm'),
                      series: <ChartSeries>[
                          
                          AreaSeries<ChartData, int>(
                              dataSource: chartData,
                              xValueMapper: (ChartData data, _) => data.x,
                              yValueMapper: (ChartData data, _) => data.y,
                               gradient: gradientColors
                          )
                      ]
                  ),
                )
              ],
            ),
          ),
        ))),
    );
  }
}