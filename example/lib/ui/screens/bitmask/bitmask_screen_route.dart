import 'package:example/ui/screens/bitmask/bitmask_screen.dart';
import 'package:flutter/material.dart';

class BitmaskScreenRoute extends MaterialPageRoute<void> {
  BitmaskScreenRoute()
      : super(
          builder: (context) => const BitmaskScreen(),
        );
}
