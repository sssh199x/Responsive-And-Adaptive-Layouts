import 'package:flutter/material.dart';
import 'package:responsiveness/constants.dart';
import 'package:responsiveness/models/my_files.dart';
import 'package:responsiveness/responsive.dart';
import 'package:responsiveness/screens/dashboard/components/header_section.dart';
import 'package:responsiveness/screens/dashboard/components/my_files.dart';
import 'package:responsiveness/screens/dashboard/components/storage_details.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                const Expanded(
                  flex: 5,
                  child: MyFiles(),
                ),
                const SizedBox(
                  width: defaultPadding,
                ),
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: StorageDetails(
                        pieChartSectionData: pieChartSectionData),
                  ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
