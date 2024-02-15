import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsiveness/constants.dart';

class CloudStorageInfo {
  final String? svgSrc, title, totalStorage;
  final int? numOfFiles;
  final double? percentage;
  final Color? color;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "Documents",
    numOfFiles: 1328,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "1.9GB",
    color: primaryColor,
    percentage: 0.35,
  ),
  CloudStorageInfo(
    title: "Google Drive",
    numOfFiles: 1328,
    svgSrc: "assets/icons/google_drive.svg",
    totalStorage: "2.9GB",
    color: const Color(0xFFFFA113),
    percentage: 0.45,
  ),
  CloudStorageInfo(
    title: "One Drive",
    numOfFiles: 1328,
    svgSrc: "assets/icons/one_drive.svg",
    totalStorage: "1GB",
    color: const Color(0xFFA4CDFF),
    percentage: 0.19,
  ),
  CloudStorageInfo(
    title: "Documents",
    numOfFiles: 5328,
    svgSrc: "assets/icons/drop_box.svg",
    totalStorage: "7.3GB",
    color: const Color(0xFF007EE5),
    percentage: 0.78,
  ),
];
List<PieChartSectionData> pieChartSectionData = [
  PieChartSectionData(
      radius: 25, value: 25, showTitle: false, color: primaryColor),
  PieChartSectionData(
      radius: 22, value: 20, color: const Color(0xFF26E5FF), showTitle: false),
  PieChartSectionData(
      radius: 19, value: 10, color: const Color(0xFFFFCF26), showTitle: false),
  PieChartSectionData(
      radius: 16, value: 15, color: const Color(0xFFEE2727), showTitle: false),
  PieChartSectionData(
      showTitle: false,
      radius: 13,
      value: 25,
      color: primaryColor.withOpacity(0.1))
];
