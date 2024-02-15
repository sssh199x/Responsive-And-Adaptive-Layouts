import 'package:flutter/material.dart';

/// A widget that allows for responsive design by rendering different content based on the screen size.
class Responsive extends StatelessWidget {
  final Widget mobile; // Content to be displayed on mobile
  final Widget? tablet; // Content to be displayed on tablet (nullable)
  final Widget desktop; // Content to be displayed on desktop
  const Responsive(
      {super.key, required this.mobile, this.tablet, required this.desktop});

  /// Checks if the screen size is considered to be mobile.
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 863;

  /// Checks if the screen size is considered to be tablet.
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 864;

  /// Checks if the screen size is considered to be desktop.
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;
  //1100;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width >= 1100) {
      return desktop; // Display desktop content
    } else if (size.width >= 850 && tablet != null) {
      return tablet!; // Display tablet content if available, otherwise fallback to mobile
    } else {
      return mobile; // Display mobile content
    }
  }
}
