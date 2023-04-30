// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:firstocktask/components/responsive_wrapper.dart';
import 'package:firstocktask/components/widget_wrapper.dart';
import 'package:firstocktask/screens/pages/home/views/markets_charts.dart';
import 'package:firstocktask/screens/pages/home/views/profile/profile_card.dart';
import 'package:firstocktask/screens/pages/home/views/profileCards.dart';
import 'package:firstocktask/screens/pages/home/views/watch_list.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Widget _getDesktop() {
    return Container(
      child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                flex: 3,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      WidgetWrapper(title: 'Markets', widget: MarketsChart())
                    ],
                  ),
                )),
            Expanded(
              flex: 4,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    WidgetWrapper(title: 'Watchlist', widget: WatchList())
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    WidgetWrapper(title: 'Me', widget: ProfileCards())
                  ],
                ),
              ),
            ),
          ]),
    );
  }

  Widget _getMobile() {
    return SingleChildScrollView(
      child: Column(
        children: [
          WidgetWrapper(title: 'Markets', widget: MarketsChart()),
          WidgetWrapper(title: 'Watchlist', widget: WatchList()),
          WidgetWrapper(title: 'Me', widget: ProfileCards())
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: _getMobile(), desktop: _getDesktop());
  }
}
