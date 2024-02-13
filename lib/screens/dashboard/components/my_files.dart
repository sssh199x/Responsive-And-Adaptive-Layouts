import 'package:flutter/material.dart';
import 'package:responsiveness/constants.dart';
import 'package:responsiveness/models/My_files.dart';
import 'package:responsiveness/screens/dashboard/components/file_info_card.dart';
import 'package:responsiveness/screens/dashboard/components/recent_files_view.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My Files',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            ElevatedButton.icon(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                        horizontal: defaultPadding * 1.5,
                        vertical: defaultPadding)),
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: bgColorLight,
                ),
                label: const Text(
                  'Add New',
                  style: TextStyle(color: bgColorLight),
                )),
          ],
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: demoMyFiles.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
        const SizedBox(
          height: defaultPadding,
        ),
        const RecentFilesView()
      ],
    );
  }
}
