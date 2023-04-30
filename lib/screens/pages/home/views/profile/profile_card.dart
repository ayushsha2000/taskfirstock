// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                    'https://source.unsplash.com/50x50/?portrait',
                  ),
                ), 
                SizedBox(height: 6.0,),
                Text('Ayush Sha', 
                style: Theme.of(context).textTheme.headline6?.copyWith(fontWeight: FontWeight.bold),
                ), 
                SizedBox(height: 6.0,),
                Text('Logged in', 
                style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.grey.withOpacity(0.5),fontWeight: FontWeight.w400),
                )
              ],
            ), 
            Container( 
              decoration: BoxDecoration( 
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(16.0)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [ 
                  Icon(Icons.logout),
                  SizedBox(width: 8.0,),
                  Text('Log out')
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
