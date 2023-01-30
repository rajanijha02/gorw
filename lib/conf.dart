import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Conf {
  static String appname = 'Groww';

  static List<Trade> marketindices = [
    Trade("", "NIFTY 50", "16,887.35", "-270.00 (1.21%)", false),
    Trade("", "SENSEX", "56,788.81", "-638.11 (1.11%)", false),
    Trade("", "NIFTY BANK", "38,029.65", "-602.30 (1.56%)", false),
  ];

  static List<Trade> boughtGroww = [
    Trade("assets/tata.jpg", "Tata Steel", "98.35", "-0.95 (0.96%)", false),
    Trade("assets/ongc.png", "ONGC", "132.40", "+5.60 (4.47%)", true),
    Trade("assets/tata.jpg", "Tata Motors", "397.65", "-6.95 (1.72%)", false),
    Trade("assets/suzlon.jpg", "Suzlon Energy", "7.90", "-0.80 (9.20%)", false),
    Trade("assets/zomato.png", "Zomato", "61.90", "-0.45 (0.72%)", false),
  ];

  static List<Features> features = [
    Features(Icons.candlestick_chart_sharp, "F&O"),
    Features(Icons.campaign, "IPO"),
    Features(Icons.auto_graph_outlined, "Intraday"),
    Features(Icons.home_filled, "SGB"),
  ];

  static List<Trade> topGainers = [
    Trade("assets/lupin.jpg", "Lupin", "722", "+42.25 (6.21%)", true),
    Trade("assets/ongc.png", "ONGC", "132.40", "+5.60 (4.42%)", true),
    Trade("assets/zomato.png", "Zomato", "61.90", "+5.60 (4.42%)", true),
  ];

  static List<Trade> stocksInNews = [
    Trade("assets/icic.png", "ICICI Bank", "-848.35", "-13.65 (1.58%)", false),
    Trade("assets/coal.png", "Coal India", "+214.95", "-2.70 (1.58%)", true),
    Trade("assets/infosys.webp", "1,393.75", "-19.70", "-2.70 (1.58%)", false),
  ];
}

class Features {
  IconData icon;
  String title;

  Features(
    this.icon,
    this.title,
  );
}

class Trade {
  String logo;
  String name;
  String price;
  String negative;
  bool positive;

  Trade(
    this.logo,
    this.name,
    this.price,
    this.negative,
    this.positive,
  );
}
