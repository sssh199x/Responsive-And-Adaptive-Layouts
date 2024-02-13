import 'package:flutter/material.dart';
import 'package:responsiveness/constants.dart';
import 'package:responsiveness/models/my_files.dart';
import 'package:responsiveness/screens/dashboard/components/file_info_card.dart';
import 'package:responsiveness/screens/dashboard/components/header_section.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:responsiveness/screens/dashboard/components/my_files.dart';
import 'package:responsiveness/screens/dashboard/components/storage_details.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<PieChartSectionData> pieChartSectionData = [
      PieChartSectionData(
          radius: 25, value: 25, showTitle: false, color: primaryColor),
      PieChartSectionData(
          radius: 22,
          value: 20,
          color: const Color(0xFF26E5FF),
          showTitle: false),
      PieChartSectionData(
          radius: 19,
          value: 10,
          color: const Color(0xFFFFCF26),
          showTitle: false),
      PieChartSectionData(
          radius: 16,
          value: 15,
          color: const Color(0xFFEE2727),
          showTitle: false),
      PieChartSectionData(
          showTitle: false,
          radius: 13,
          value: 25,
          color: primaryColor.withOpacity(0.1))
    ];
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const HeaderSection(),
            const SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const MyFiles(),
                      const SizedBox(
                        height: defaultPadding,
                      ),
                      GridView.builder(
                        shrinkWrap: true,
                        itemCount: demoMyFiles.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                mainAxisSpacing: defaultPadding,
                                crossAxisSpacing: defaultPadding,
                                childAspectRatio: 1.3),
                        itemBuilder: (context, index) {
                          return FileInfoCard(
                            info: demoMyFiles[index],
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: defaultPadding,
                ),
                Expanded(
                  flex: 2,
                  child:
                      StorageDetails(pieChartSectionData: pieChartSectionData),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
