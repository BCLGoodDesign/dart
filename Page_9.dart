import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
// 参考元　https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=https://zenn.dev/tsukatsuka1783/articles/fl_chart_flutter&ved=2ahUKEwi5w676i8SHAxUMgK8BHUQfLNUQFnoECBIQAQ&usg=AOvVaw3x6kqI9i-gNP9l82lA4ax5



class Page_9 extends StatefulWidget {
  const Page_9({Key? key}) : super(key: key);

  @override
  State<Page_9> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Page_9> {

  /// 色は単色が良かったので、グラデーションは使用しない
  // List<Color> gradientColors = [
  //   const Color(0xff23b6e6),
  //   const Color(0xff02d39a),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // グラフ表示画面(大枠)の設定
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("日間", style: const TextStyle(fontSize: 15)),
            SizedBox(
                height: 15,
              ),
            Text("2024年6月27日", style: const TextStyle(fontSize: 15)),  
             SizedBox(
                height: 15,
              ),
            AspectRatio(
              aspectRatio: 1.414,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(18),
                  ),
                  color: Color(0xff232d37),
                ), //？
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 18,
                    left: 12,
                    top: 24,
                    bottom: 12,
                  ),
                  child: LineChart(
                    mainData(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      // タッチ操作時の設定
      lineTouchData: LineTouchData(
        handleBuiltInTouches: true, // タッチ時のアクションの有無
        getTouchedSpotIndicator: defaultTouchedIndicators, // インジケーターの設定
        // ツールチップの設定
        touchTooltipData: LineTouchTooltipData(
          getTooltipItems: defaultLineTooltipItem, // 表示文字設定
          tooltipBgColor: Colors.white, // 背景の色
          tooltipRoundedRadius: 2.0, // 角丸
        ),
      ),

      // 背景のグリッド線の設定
      gridData: FlGridData(
        show: true, // 背景のグリッド線の有無
        drawVerticalLine: true, // 水平方向のグリッド線の有無
        horizontalInterval: 1.0, // 背景グリッドの横線間隔
        verticalInterval: 1.0, // 背景グリッドの縦線間隔
        // 背景グリッドの横線設定
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1.0, // 線の太さ
          );
        },
        // 背景グリッドの縦線設定
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1.0, // 線の太さ
          );
        },
      ),

      // グラフのタイトル設定
      titlesData: FlTitlesData(
        show: true, // タイトルの有無
        rightTitles: AxisTitles(),
        topTitles: AxisTitles(),
        // 下側のタイトル設定
        bottomTitles: AxisTitles(
          // タイトル名
          axisNameWidget: const Text(
            "[時間]",
            style: TextStyle(
              color: Color(0xff68737d),
            ),
          ),
          axisNameSize: 22.0, //タイトルの表示エリアの幅
          // サイドタイトルの設定
          sideTitles: SideTitles(
            showTitles: true, // サイドタイトルの有無
            interval: 1.0, // サイドタイトルの表示間隔
            reservedSize: 40.0, // サイドタイトルの表示エリアの幅
            getTitlesWidget: bottomTitleWidgets, // サイドタイトルの表示内容
          ),
        ),
        leftTitles: AxisTitles(
          axisNameWidget: const Text(
            "【来店者数】",
            style: TextStyle(
              color: Color(0xff68737d),
            ),
          ),
          axisNameSize: 28.0, //タイトルの表示エリアの幅
          sideTitles: SideTitles(
            showTitles: true, // サイドタイトルの表示・非表示
            interval: 1.0, // サイドタイトルの表示間隔
            reservedSize: 42.0, // サイドタイトルの表示エリアの幅
            getTitlesWidget: leftTitleWidgets,
          ),
        ),
      ),

      // グラフの外枠線
      borderData: FlBorderData(
        show: true, // 外枠線の有無
        border: Border.all(
          color: const Color(0xff37434d),
        ),
      ),

      // グラフのx軸y軸のの表示数(最大値)
      minX: 0.0,
      maxX: 7.0,//区切った時間の数
      minY: 0.0,
      maxY: 6.0,//区切った来店者数の数

      // チャート線の設定
      lineBarsData: [
        LineChartBarData(
          // 表示する座標のリスト
          spots: const [
            FlSpot(0.0, 3.0),
            FlSpot(1.0, 2.0),
            FlSpot(2.0, 5.0),
            FlSpot(3.0, 3.0),
            FlSpot(4.0, 4.0),
            FlSpot(5.0, 3.0),
            FlSpot(6.0, 4.0),
            FlSpot(7.0, 4.0),
          ],
          isCurved: false, // チャート線を曲線にするか折れ線にするか
          /// グラデーションは使用しない
          // gradient: LinearGradient(
          //   colors: gradientColors,
          // ),
          barWidth: 1.0, // チャート線幅
          isStrokeCapRound: false, // チャート線の開始と終了がQubicかRoundか（？）
          dotData: FlDotData(
            show: true, // 座標にドット表示の有無
            // ドットの詳細設定
            getDotPainter: (spot, percent, barData, index) =>
                // ドットの詳細設定
                FlDotCirclePainter(
              radius: 2.0,
              color: Colors.blue,
              strokeWidth: 2.0,
              strokeColor: Colors.blue,
            ),
          ),
          // チャート線下部に色を付ける場合の設定
          belowBarData: BarAreaData(
            show: false, // チャート線下部の表示の有無

            /// グラデーションは使用しない
            // gradient: LinearGradient(
            //   colors: gradientColors
            //       .map((color) => color.withOpacity(0.3))
            //       .toList(),
            // ),
          ),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff68737d),
      fontWeight: FontWeight.bold,
      fontSize: 16.0,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text('10', style: style);
        break;
      case 1:
        text = const Text('12', style: style);
        break;
      case 2:
        text = const Text('14', style: style);
        break;
      case 3:
        text = const Text('16', style: style);
        break;
      case 4:
        text = const Text('18', style: style);
        break;
      case 5:
        text = const Text('20', style: style);
        break;
      case 6:
        text = const Text('22', style: style);
        break;
      case 7:
        text = const Text('24', style: style);
        break;  
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff68737d),
      fontWeight: FontWeight.bold,
      fontSize: 15.0,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '1';
        break;
      case 3:
        text = '3';
        break;
      case 5:
        text = '5';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }
}
