import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsiveness/constants.dart';

class StorageInfoCard extends StatelessWidget {
  final String title, svgSrc, amountOfFiles;
  final int noOfFiles;
  const StorageInfoCard({
    super.key,
    required this.title,
    required this.svgSrc,
    required this.amountOfFiles,
    required this.noOfFiles,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(color: primaryColor.withOpacity(0.15), width: 2),
        borderRadius: BorderRadius.circular(defaultPadding),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(svgSrc),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '$noOfFiles Files',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child: Text(
              amountOfFiles,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
