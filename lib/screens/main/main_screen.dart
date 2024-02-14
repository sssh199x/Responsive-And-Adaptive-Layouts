import 'package:flutter/material.dart';
import 'package:responsiveness/responsive.dart';
import 'package:responsiveness/screens/dashboard/dashboard_screen.dart';
import 'package:responsiveness/screens/main/components/side_bar_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(
                // It takes 1/6 part of the screen
                flex: 1,
                child: SidebarMenu(),
              ),
            const Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: DashBoardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
