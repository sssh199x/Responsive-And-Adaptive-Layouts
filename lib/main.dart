import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsiveness/controllers/menu_app_controller.dart';
import 'package:responsiveness/screens/main/main_screen.dart';
import 'package:responsiveness/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Design',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: MultiProvider(providers: [
        ChangeNotifierProvider(
          create: (context) => MenuAppController(),
        )
      ], child: const MainScreen()),
    );
  }
}
