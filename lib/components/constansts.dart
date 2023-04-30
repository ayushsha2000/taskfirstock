import 'package:flutter/material.dart';

List<BoxShadow> boxShadow = [
  const BoxShadow(
    color: Colors.grey,
    offset: Offset(5, 5),
    blurRadius: 6,
    spreadRadius: 1,
  ),
  const BoxShadow(
    color: Colors.white12,
    offset: Offset(-5, -5),
    blurRadius: 6,
    spreadRadius: 1,
  ),
];

BoxDecoration boxDecorationContainer = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(16.0),
    boxShadow: boxShadow);


BoxDecoration boxDecorationBox = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12.0),
    boxShadow: boxShadow);
