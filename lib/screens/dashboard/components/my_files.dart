import 'package:flutter/material.dart';
import 'package:responsiveness/constants.dart';
import 'package:responsiveness/responsive.dart';
import 'package:responsiveness/screens/dashboard/components/file_info_card_grid_view.dart';
import 'package:responsiveness/screens/dashboard/components/recent_files_view.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
        Responsive(
          mobile: const FileInfoCardGridView(),
          desktop: FileInfoCardGridView(
              childAspectRatio: size.width < 1400 ? 1.0 : 1.4),
          tablet: const FileInfoCardGridView(),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        const RecentFilesView()
      ],
    );
  }
}
