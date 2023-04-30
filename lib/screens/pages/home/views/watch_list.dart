import 'package:firstocktask/components/constansts.dart';
import 'package:firstocktask/screens/pages/home/views/watchList/watch_list_basket.dart';
import 'package:firstocktask/screens/pages/home/views/watchList/watch_list_card.dart';
import 'package:flutter/material.dart';

class WatchList extends StatefulWidget {
  const WatchList({super.key});

  @override
  State<WatchList> createState() => _WatchListState();
}

class _WatchListState extends State<WatchList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
          WatchListCard(), 
          SizedBox(height: 6.0,), 
          WatchListBasket()
        ],
      ),
    );
  }
}

