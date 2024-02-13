import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsiveness/constants.dart';
import 'package:responsiveness/screens/dashboard/components/chart.dart';
import 'package:responsiveness/screens/dashboard/components/storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    super.key,
    required this.pieChartSectionData,
  });

  final List<PieChartSectionData> pieChartSectionData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(10)),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Storage Details'),
          Chart(pieChartSectionData: pieChartSectionData),
          const StorageInfoCard(
            title: 'Document Files',
            svgSrc: 'assets/icons/Documents.svg',
            amountOfFiles: '1.5 GB',
            noOfFiles: 1569,
          ),
          const StorageInfoCard(
            title: 'Media Files',
            svgSrc: 'assets/icons/media.svg',
            amountOfFiles: '5.5 GB',
            noOfFiles: 3569,
          ),
          const StorageInfoCard(
            title: 'Other Files',
            svgSrc: 'assets/icons/folder.svg',
            amountOfFiles: '3.45 GB',
            noOfFiles: 2543,
          ),
          const StorageInfoCard(
            title: 'Unknown Files',
            svgSrc: 'assets/icons/unknown.svg',
            amountOfFiles: '2.25 GB',
            noOfFiles: 569,
          ),
        ],
      ),
    );
  }
}
