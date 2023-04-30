import 'package:flutter/material.dart';

class WidgetWrapper extends StatelessWidget {
  final String? title; 
  final Widget widget; 

  WidgetWrapper({ 
    this.title, 
    required this.widget
  });

  @override
  Widget build(BuildContext context) {
    return Column( 
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ 
        Text(title??'', style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white),), 
        Container( 
          child: widget,
        )
      ],
    );
  }
}