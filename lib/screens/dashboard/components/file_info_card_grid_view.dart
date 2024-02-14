import 'package:flutter/material.dart';
import 'package:responsiveness/constants.dart';
import 'package:responsiveness/models/My_files.dart';
import 'package:responsiveness/screens/dashboard/components/file_info_card.dart';

class FileInfoCardGridView extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;
  const FileInfoCardGridView({
    super.key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 0.8,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: defaultPadding,
          crossAxisSpacing: defaultPadding,
          childAspectRatio: childAspectRatio),
      itemBuilder: (context, index) {
        return FileInfoCard(
          info: demoMyFiles[index],
        );
      },
    );
  }
}
