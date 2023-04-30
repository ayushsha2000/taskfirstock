// ignore_for_file: unused_local_variable, prefer_const_constructors

import 'package:firstocktask/screens/pages/home/model.dart';
import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bigCircle = Container(
      width: 150.0,
      height: 150.0,
      decoration: BoxDecoration(
        border: Border.all(width: 1.0, color: Colors.purple),
        gradient: LinearGradient(colors: [Colors.pink, Colors.purple],
        begin: Alignment.topLeft, 
        end: Alignment.bottomRight
        ),
        // color: Colors.pink,
        shape: BoxShape.circle,
      ),
    );
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text('Portfolio', 
              style: Theme.of(context).textTheme.headlineLarge,
              ), Text('Diversity', 
              style: Theme.of(context).textTheme.subtitle1,
              )],
            ),
            Center(
              child: Container(
                child: bigCircle,
              ),
            ),
            SizedBox(height: 8.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  portfolioModel.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                          decoration:
                              BoxDecoration(border: Border.all(width: 0.5), 
                              borderRadius: BorderRadius.circular(8.0)
                              ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(portfolioModel[index].percentage ?? ''),
                                Text(portfolioModel[index].title ?? ''),
                              ],
                            ),
                          ),
                        ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
