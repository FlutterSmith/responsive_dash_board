import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeChartLessWidth extends StatefulWidget {
  const IncomeChartLessWidth({super.key});

  @override
  State<IncomeChartLessWidth> createState() => _IncomeChartLessWidthState();
}

class _IncomeChartLessWidthState extends State<IncomeChartLessWidth> {
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
            titlePositionPercentageOffset: activeIndex == 0 ? -1 : null,
            value: 40,
            color: const Color(0xFF208BC7),
            title: activeIndex == 0 ? 'Design service' : '40%',
            radius: activeIndex == 0 ? 60 : 40,
            titleStyle: AppStyles.styleRegular16(context)
                .copyWith(color: activeIndex == 0 ? null : Colors.white),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 1 ? -1 : null,
            value: 25,
            color: const Color(0xFF4DB7F2),
            title: activeIndex == 1 ? 'Design product' : '25%',
            radius: activeIndex == 1 ? 60 : 40,
            titleStyle: AppStyles.styleRegular16(context)
                .copyWith(color: activeIndex == 1 ? null : Colors.white),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 2 ? -1 : null,
            value: 20,
            color: const Color(0xFF064060),
            title: activeIndex == 2 ? 'Product royalti' : '20%',
            radius: activeIndex == 2 ? 60 : 40,
            titleStyle: AppStyles.styleRegular16(context)
                .copyWith(color: activeIndex == 2 ? null : Colors.white),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 3 ? -1 : null,
            value: 22,
            color: const Color(0xFFE2DECD),
            title: activeIndex == 3 ? 'other' : '22%',
            radius: activeIndex == 3 ? 60 : 40,
            titleStyle: AppStyles.styleRegular16(context)
                .copyWith(color: activeIndex == 3 ? null : Colors.white),
          ),
        ]);
  }
}
