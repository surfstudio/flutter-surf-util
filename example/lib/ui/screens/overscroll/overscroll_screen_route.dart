import 'package:example/ui/screens/overscroll/overscroll_screen.dart';
import 'package:flutter/material.dart';

class OverscrollScreenRoute extends MaterialPageRoute<void> {
    OverscrollScreenRoute()
        : super(
            builder: (context) => const OverscrollScreen(),
          );
  }