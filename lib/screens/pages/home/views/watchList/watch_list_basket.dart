import 'package:firstocktask/components/constansts.dart';
import 'package:firstocktask/screens/pages/home/model.dart';
import 'package:flutter/material.dart';

class WatchListBasket extends StatelessWidget {
  const WatchListBasket({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: MediaQuery.of(context).size.height / 1.3,
        child: ListView.builder(
            itemCount: watchList.length,
            itemBuilder: ((context, index) => Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 8.0),
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: boxDecorationBox,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12.0, vertical: 8.0),
                                        child: Row(
                                          children: [
                                            Text(watchList[index].plus ?? ''),
                                            SizedBox(
                                              width: 20.0,
                                            ),
                                            Text(watchList[index].minus ?? '')
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Text(watchList[index].price ?? '')
                                  ],
                                ),
                                SizedBox(
                                  height: 12.0,
                                ),
                                Text(watchList[index].id ?? '')
                              ],
                            ),
                            // Divider(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ))),
      ),
    );
  }
}
