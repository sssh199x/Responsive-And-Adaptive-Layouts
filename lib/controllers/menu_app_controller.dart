import 'package:flutter/material.dart';

// A class that controls the menu of the app
class MenuAppController extends ChangeNotifier {
  // A global key to access the state of a Scaffold widget
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // Getter method to access the scaffold key
  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  // Method to control the menu
  void controlMenu() {
    // Check if the drawer is not open
    if (!_scaffoldKey.currentState!.isDrawerOpen) {
      // If the drawer is not open, open it
      _scaffoldKey.currentState!.openDrawer();
    }
  }
}
