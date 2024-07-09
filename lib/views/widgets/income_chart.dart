import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

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
            titlePositionPercentageOffset: activeIndex == 0 ? -0.8 : null,
            showTitle: activeIndex == 0 ? true : false,
            color: const Color(0xFF208BC7),
            value: 40,
            title: '%40',
            radius: activeIndex == 0 ? 30 : 10,
            titleStyle: AppStyles.styleRegular16(context)
                .copyWith(color: activeIndex == 0 ? null : Colors.white),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 1 ? -0.8 : null,
            showTitle: activeIndex == 1 ? true : false,
            color: const Color(0xFF4DB7F2),
            value: 25,
            title: '25%',
            radius: activeIndex == 1 ? 30 : 10,
            titleStyle: AppStyles.styleRegular16(context)
                .copyWith(color: activeIndex == 1 ? null : Colors.white),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 2 ? -0.8 : null,
            showTitle: activeIndex == 2 ? true : false,
            color: const Color(0xFF064060),
            value: 20,
            title: '20%',
            radius: activeIndex == 2 ? 30 : 10,
            titleStyle: AppStyles.styleRegular16(context)
                .copyWith(color: activeIndex == 2 ? null : Colors.white),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 3 ? -0.8 : null,
            showTitle: activeIndex == 3 ? true : false,
            color: const Color(0xFFE2DECD),
            value: 22,
            title: '22%',
            radius: activeIndex == 3 ? 30 : 10,
            titleStyle: AppStyles.styleRegular16(context)
                .copyWith(color: activeIndex == 3 ? null : Colors.white),
          ),
        ]);
  }
}
