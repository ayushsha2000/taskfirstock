
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:firstocktask/components/responsive_wrapper.dart';
import 'package:flutter/material.dart';


class SetView extends StatefulWidget {
  const SetView({Key? key}) : super(key: key);

  @override
  _SetViewState createState() => _SetViewState();
}

class _SetViewState extends State<SetView> {
  Widget _getDesktop() {
    return Container(
      child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Container(color: Colors.black,),
                       Container(color: Colors.blue,)
                    ],
                  ),
                )),
            
            Expanded(
              flex: 3,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                     Container(color: Colors.black,)
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
          
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: _getMobile(), desktop: _getDesktop());
  }
}
