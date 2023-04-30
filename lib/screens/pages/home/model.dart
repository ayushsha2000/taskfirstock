class MarketsChart{ 
  final String? title, titleName, price, plus, minus;

  MarketsChart({required this.minus, required this.plus, required this.price, required this.title, required this.titleName});
}

final List<MarketsChart> dummyData = [ 
  MarketsChart(minus: '-0.11%', plus: '+0.55', price: '490.50', title: 'BSE Ltd', titleName: 'BSE NSE'),
  MarketsChart(minus: '-0.53%', plus: '+59.40', price: '400', title: 'Nifty 50', titleName: 'NSEI'),
];

class ChartData {
        ChartData(this.x, this.y);
        final int x;
        final double y;
    }

class WatchList{ 
  final String? id, price, plus, minus;
  WatchList({this.id, this.minus, this.plus, this.price});
}

List<WatchList> watchList = [ 
  WatchList( 
    id: 'cdasdjsand873376', 
    price: '870', 
    plus: '+98', 
    minus: '-78'
  ),
  WatchList( 
    id: 'kksjasdja987', 
    price: '560', 
    plus: '+50', 
    minus: '-18'
  ),
  WatchList( 
    id: '870937ayush', 
    price: '765', 
    plus: '+98', 
    minus: '-78'
  ),
  WatchList( 
    id: 'kksjasdja987', 
    price: '560', 
    plus: '+50', 
    minus: '-18'
  ),
  WatchList( 
    id: '870937ayush', 
    price: '765', 
    plus: '+98', 
    minus: '-78'
  ),
   WatchList( 
    id: 'kksjasdja987', 
    price: '560', 
    plus: '+50', 
    minus: '-18')
];

class PortfolioDataModel{ 
  final String? title, percentage;
  PortfolioDataModel({this.percentage, this.title});
}

List<PortfolioDataModel> portfolioModel = [ 
  PortfolioDataModel( 
    percentage: '10%', 
    title: 'low'
  ),
  PortfolioDataModel( 
    percentage: '17%', 
    title: 'medium'
  ),
  PortfolioDataModel( 
    percentage: '100%', 
    title: 'high'
  ),
];

class Points{ 
  final double? x, y;
  Points({this.x, this.y});
}

List<Points> point = [ 
  Points(x: 100, y:100),
  Points(x: 200, y:200),
  Points(x: 300, y:300),
  Points(x: 400, y:400),
  Points(x: 500, y:500),
  Points(x: 600, y:600),
];