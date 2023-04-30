// ignore_for_file: prefer_const_constructors

import 'package:beamer/beamer.dart';
import 'package:firstocktask/screens/homePage.dart';

import 'package:firstocktask/screens/pages/home/home_view.dart';
import 'package:firstocktask/screens/pages/insights/insight_view.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final routeDelegate = BeamerDelegate(
  //   initialPath: '/',
  //     notFoundPage: BeamPage(child: Text('Not Found')),
  //     locationBuilder: RoutesLocationBuilder(routes: {
  //        '/': (context, state, data) => HomePage(),
  //       '/home': (context, state, data) => HomeView(),
  //       '/insight': (context, state, data) => InsightView()
  //     }));
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routeInformationParser: BeamerParser(),
      // routerDelegate: routeDelegate,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
