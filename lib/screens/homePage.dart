import 'package:firstocktask/screens/pages/home/home_view.dart';
import 'package:firstocktask/screens/pages/insights/insight_view.dart';
import 'package:firstocktask/screens/pages/set/set_view.dart';
import 'package:firstocktask/components/ui_helper.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _screens = [HomeView(), InsightView(), SetView()];

  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: isMobile(context)?BottomNavigationBar(
        currentIndex: _selectIndex, 
        unselectedItemColor: Colors.grey, 
        selectedItemColor: Colors.black, 
        onTap: (int index){ 
          setState(() {
            _selectIndex = index;
          });
        },
        items: const [ 
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search,),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.settings,),label: 'Settings'),
          BottomNavigationBarItem(icon: Icon(Icons.verified,),label: 'Profile'),
        ] ):null,
      body: Row(
        children: [
          if(isDesktop(context))
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:12.0, vertical: 32),
            child: ClipRRect( 
              borderRadius: BorderRadius.circular(12.0),
              child: NavigationRail(
                
                  onDestinationSelected: (int index) {
                    setState(() {
                      _selectIndex = index;
                    });
                  },
                  destinations: const [
                    NavigationRailDestination(
                      padding: EdgeInsets.only(top: 200,bottom: 10),
                        icon: Icon(Icons.home), label: Text('Home')),
                    NavigationRailDestination(
                        icon: Icon(Icons.search), label: Text('Search')),
                    NavigationRailDestination(
                      padding: EdgeInsets.only(top: 10,bottom: 200),
                        icon: Icon(Icons.settings), label: Text('Settings')),
                    // NavigationRailDestination(
                    //     icon: Icon(Icons.verified_user), label: Text('Profile')),
                  ],
                  trailing: IconButton(onPressed: (){}, icon: Icon(Icons.verified)),
                  selectedIndex: _selectIndex),
            ),
          ),
          Expanded(child: _screens[_selectIndex])
        ],
      ),
    );
  }
}
