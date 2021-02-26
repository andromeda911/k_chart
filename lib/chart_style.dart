import 'package:flutter/material.dart' show Color, Colors;
import 'package:intl/intl.dart';

class ChartColors {
  static const Color defaultTextColor = Colors.white;

  Color kLineColor;
  Color lineFillColor;
  Color ma5Color;
//static const Color ma10Color;
  Color ma10Color;
  Color ma20Color;
  Color ma5ColorOpacity70;
  Color ma10ColorOpacity70;
  Color ma20ColorOpacity70;
  Color bollUp;
  Color bollMiddle;
  Color bollDown;
  Color bollBackground;
//static const Color upColor;
  Color upColor;
  Color dnColor;
  Color upColorDark;
  Color dnColorDark;
  Color volColor;
  Color gridColor;
  Color macdColor;
  Color difColor;
  Color deaColor;
  Color macdColorOpacity70;
  Color difColorOpacity70;
  Color deaColorOpacity70;
  Color kColor;
  Color dColor;
  Color jColor;
  Color rsiColor;
  Color kColorOpacity70;
  Color dColorOpacity70;
  Color jColorOpacity70;
  Color rsiColorOpacity70;
// Depth color
  Color depthBuyColor;
  Color depthSellColor;
// Display the value border color after selection
  Color selectBorderColor;
// The fill color of the background of the displayed value after selection
  Color selectFillColor;
  Color background;

  static final ChartColors _instance = ChartColors._();

  factory ChartColors() {
    return _instance;
  }

  ChartColors._() {
    kLineColor = Color(0xff4C86CD);
    lineFillColor = Colors.white54;
    ma5Color = Color(0xFF2979ff);
    //static const Color ma10Color = Color(0xFFffffff);
    ma10Color = Colors.orange;
    ma20Color = Color(0xFFffea00);
    ma5ColorOpacity70 = Color(0xBF007AFF);
    ma10ColorOpacity70 = Color(0xBFffffff);
    ma20ColorOpacity70 = Color(0xBFffea00);
    bollUp = Color(0xFF2979FF);
    bollMiddle = Color(0xFFff1744);
    bollDown = Color(0xFF2979FF);
    bollBackground = Color(0x222979FF);
    //static const Color upColor = Color(0xFF00B865);
    upColor = Colors.green;
    dnColor = Color(0xFFFF5D52);
    upColorDark = Color(0xFF009F4C);
    dnColorDark = Color(0xFFE64439);
    volColor = Colors.white54;
    gridColor = Colors.white12;

    macdColor = Color(0xffb388ff);
    difColor = Color(0xffffea00);
    deaColor = Color(0xff18ffff);
    macdColorOpacity70 = Color(0xBFb388ff);
    difColorOpacity70 = Color(0xBFffea00);
    deaColorOpacity70 = Color(0xBF18ffff);

    kColor = Color(0xffffea00);
    dColor = Color(0xff18ffff);
    jColor = Color(0xffb388ff);
    rsiColor = Color(0xffffea00);
    kColorOpacity70 = Color(0xBFffea00);
    dColorOpacity70 = Color(0xBF18ffff);
    jColorOpacity70 = Color(0xBFb388ff);
    rsiColorOpacity70 = Color(0xBFffea00);

    // Depth color
    depthBuyColor = Color(0xFF00B865);
    depthSellColor = Color(0xFFFF5D52);
    // Display the value border color after selection
    selectBorderColor = Colors.white12;
    // The fill color of the background of the displayed value after selection
    selectFillColor = Color(0xFF1a193a);

    background = Color(0xff18191d);
  }

  Color getMAColor(int index) {
    Color maColor = ma5Color;
    switch (index % 3) {
      case 0:
        maColor = ma5Color;
        break;
      case 1:
        maColor = ma10Color;
        break;
      case 2:
        maColor = ma20Color;
        break;
    }
    return maColor;
  }
}

class ChartStyle {
  //点与点的距离
  double pointWidth;

  //蜡烛宽度
  double candleWidth;

  //蜡烛中间线的宽度
  double candleLineWidth;

  //vol柱子宽度
  double volWidth;

  //macd柱子宽度
  double macdWidth;

  //垂直交叉线宽度
  double vCrossWidth;

  //水平交叉线宽度
  double hCrossWidth;

  double fontSize;

  static final ChartStyle _instance = ChartStyle._();

  factory ChartStyle() {
    return _instance;
  }

  ChartStyle._() {
    pointWidth = 11.0;

    candleWidth = 6.0;

    candleLineWidth = 1.0;

    volWidth = 6.0;

    macdWidth = 3.0;

    vCrossWidth = 0.5;

    hCrossWidth = 0.5;

    fontSize = 10.0;
  }
}

class ChartFormats {
  static final numberShort = NumberFormat('#,##0');
  static final date = DateFormat('dd MMM yyyy');
  static final dateWithTime = DateFormat('dd MMM yy  hh:mm');

  static final money = [
    NumberFormat('#,##0'),
    NumberFormat('#,##0.0'),
    NumberFormat('#,##0.00'),
    NumberFormat('#,##0.000'),
    NumberFormat('#,##0.0000'),
    NumberFormat('#,##0.00000'),
    NumberFormat('#,##0.000000'),
    NumberFormat('#,##0.0000000'),
    NumberFormat('#,##0.00000000'),
    NumberFormat('#,##0.000000000'),
    NumberFormat('#,##0.0000000000'),
  ];
}
