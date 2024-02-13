import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsiveness/constants.dart';

class Chart extends StatelessWidget {
  const Chart({
    super.key,
    required this.pieChartSectionData,
  });

  final List<PieChartSectionData> pieChartSectionData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(children: [
        PieChart(
          PieChartData(
            centerSpaceRadius: 60,
            startDegreeOffset: -270,
            sections: pieChartSectionData,
          ),
        ),
        Positioned.fill(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: defaultPadding,
            ),
            Text(
              '30.2 GB',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.w600, height: 1),
            ),
            const Text('Of 512GB')
          ],
        ))
      ]),
    );
  }
}
