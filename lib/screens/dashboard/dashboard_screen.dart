import 'package:flutter/material.dart';
import 'package:responsiveness/constants.dart';

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
            //const HeaderSection(),
            const SizedBox(
              height: defaultPadding,
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.white,
            ),
          ],
        ),
      )),
    );
  }
}
