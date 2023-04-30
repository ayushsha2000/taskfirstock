import 'package:flutter/material.dart';

class MarketCard extends StatelessWidget {
  const MarketCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card( 
      // height: 300, 
     color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Recent news', style: Theme.of(context).textTheme.headline4,),
            Center(
              child: Card( 
                color: Colors.grey.withOpacity(0.3),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column( 
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                      Row( 
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [ 
                          Column( 
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [ 
                              Text('Lorem ipsum'), 
                              Text('Lorem ipsum,dollar ispe lorem ipsum')
                            ],
                          ), 
                          IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month))
                        ],
                      ), 
                      SizedBox(height: 20,),
                      Text('READ MORE  >>', )
                    
                  ],),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}

