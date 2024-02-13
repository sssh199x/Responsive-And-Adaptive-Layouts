import 'package:flutter/material.dart';
import 'package:responsiveness/constants.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
