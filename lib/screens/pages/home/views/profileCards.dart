

import 'package:firstocktask/screens/pages/home/views/profile/portfolio.dart';
import 'package:firstocktask/screens/pages/home/views/profile/portfolio_performance.dart';
import 'package:firstocktask/screens/pages/home/views/profile/profile_card.dart';
import 'package:flutter/material.dart';

class ProfileCards extends StatelessWidget {
  const ProfileCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:16.0),
      child: Column( 
        children: [
          ProfileCard(), 
          Portfolio(), 
          PortfolioPerformance()
        ],
      ),
    );
  }
}