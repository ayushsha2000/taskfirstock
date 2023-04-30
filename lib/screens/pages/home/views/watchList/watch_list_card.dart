// ignore_for_file: prefer_const_constructors

import 'package:firstocktask/components/constansts.dart';
import 'package:flutter/material.dart';

class WatchListCard extends StatelessWidget {
  const WatchListCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: 24.0, horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: boxDecorationContainer
                ),
                SizedBox(width: 8.0,), 
                Text('INFY', style: Theme.of(context).textTheme.titleLarge,),
              ],
            ),
            Column( 
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [ 
                Container( 
                  decoration: boxDecorationBox,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:16.0, vertical: 8.0),
                    child: Text('Watchlist 1'),
                  ),
                ),
                SizedBox(height: 8,),
                Container( 
                  decoration: boxDecorationBox,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:12.0, vertical: 8.0),
                    child: Text('Watchlist 1'),
                  ),
                ),
                SizedBox(height: 8,),
                Text('948.80')
              ],
            )
          ],
        ),
      ),
    );
  }
}
