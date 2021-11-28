import 'package:example/ui/screens/main/main_screen.dart';
import 'package:flutter/material.dart';

class MainScreenRoute extends MaterialPageRoute<void> {
  MainScreenRoute()
      : super(
          builder: (context) => const MainScreen(),
        );
}
