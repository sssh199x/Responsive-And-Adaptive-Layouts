import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsiveness/constants.dart';

class SidebarMenu extends StatelessWidget {
  const SidebarMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: bgColorDark,
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Creates a Material Design drawer header.
            DrawerHeader(child: Image.asset('assets/images/logo.png')),
            DrawerListTile(
              onTap: () {},
              svgPath: 'assets/icons/menu_dashboard.svg',
              title: 'DashBoard',
            ),
            DrawerListTile(
              title: 'Transaction',
              svgPath: 'assets/icons/menu_tran.svg',
              onTap: () {},
            ),
            DrawerListTile(
              title: 'Task',
              svgPath: 'assets/icons/menu_task.svg',
              onTap: () {},
            ),
            DrawerListTile(
              title: 'Documents',
              svgPath: 'assets/icons/menu_doc.svg',
              onTap: () {},
            ),
            DrawerListTile(
              title: 'Store',
              svgPath: 'assets/icons/menu_store.svg',
              onTap: () {},
            ),
            DrawerListTile(
              title: 'Notifications',
              svgPath: 'assets/icons/menu_notification.svg',
              onTap: () {},
            ),
            DrawerListTile(
              title: 'Settings',
              svgPath: 'assets/icons/menu_setting.svg',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String title, svgPath;
  final VoidCallback onTap;
  const DrawerListTile({
    super.key,
    required this.title,
    required this.svgPath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        svgPath,
        // ignore: deprecated_member_use
        color: Colors.white54,
        height: 16.0,
      ),
      title: Text(title, style: const TextStyle(color: bgColorLight)),
      horizontalTitleGap: 0.0,
      onTap: onTap,
    );
  }
}
