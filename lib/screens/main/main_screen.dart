import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsiveness/controllers/menu_app_controller.dart';
import 'package:responsiveness/responsive.dart';
import 'package:responsiveness/screens/dashboard/dashboard_screen.dart';
import 'package:responsiveness/screens/main/components/side_bar_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,
      drawer: const SidebarMenu(),
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
