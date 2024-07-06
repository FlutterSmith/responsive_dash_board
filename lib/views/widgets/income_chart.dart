import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (FlTouchEvent event, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            showTitle: false,
            color: const Color(0xFF208BC7),
            value: 40,
            title: 'Design service',
            radius: activeIndex == 0 ? 60 : 40,
          ),
          PieChartSectionData(
            showTitle: false,
            color: const Color(0xFF4DB7F2),
            value: 25,
            title: 'Design product',
            radius: activeIndex == 1 ? 60 : 40,
          ),
          PieChartSectionData(
            showTitle: false,
            color: const Color(0xFF064060),
            value: 20,
            title: 'Product royalti',
            radius: activeIndex == 2 ? 60 : 40,
          ),
          PieChartSectionData(
            showTitle: false,
            color: const Color(0xFFE2DECD),
            value: 22,
            title: 'other',
            radius: activeIndex == 3 ? 60 : 40,
          ),
        ]);
  }
}
