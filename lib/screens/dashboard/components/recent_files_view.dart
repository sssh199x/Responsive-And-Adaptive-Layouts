import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsiveness/constants.dart';
import 'package:responsiveness/models/recent_files.dart';

class RecentFilesView extends StatelessWidget {
  const RecentFilesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Files',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columns: const [
                DataColumn(
                  label: Text('File Name',
                      maxLines: 1, overflow: TextOverflow.ellipsis),
                ),
                DataColumn(
                  label: Text('Date',
                      maxLines: 1, overflow: TextOverflow.ellipsis),
                ),
                DataColumn(
                  label: Text('Size',
                      maxLines: 1, overflow: TextOverflow.ellipsis),
                ),
              ],
              rows: List.generate(demoRecentFiles.length,
                  (index) => recentFileDataRow(demoRecentFiles[index])),
            ),
          )
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(RecentFile infoFile) {
  return DataRow(cells: [
    DataCell(Row(
      children: [
        SvgPicture.asset(
          infoFile.icon!,
          height: 30,
          width: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Text(infoFile.title!),
        ),
      ],
    )),
    DataCell(
      Text(infoFile.date!),
    ),
    DataCell(
      Text(infoFile.size!),
    ),
  ]);
}
