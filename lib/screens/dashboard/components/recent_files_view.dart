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
    final Size size = MediaQuery.of(context).size;
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
            width: double.maxFinite,
            child: size.width <= 375
                ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      border: TableBorder.all(color: bgColorLight),
                      columnSpacing: 15,
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
                : DataTable(
                    border: TableBorder.all(color: bgColorLight),
                    columnSpacing: 15,
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
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset(
          infoFile.icon!,
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Text(
            infoFile.title!,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    )),
    DataCell(
      Text(
        infoFile.date!,
        overflow: TextOverflow.ellipsis,
      ),
    ),
    DataCell(
      Text(
        infoFile.size!,
        overflow: TextOverflow.ellipsis,
      ),
    ),
  ]);
}
