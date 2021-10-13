import 'package:example/ui/res/app_strings.dart';
import 'package:flutter/material.dart';

class BitmaskScreen extends StatelessWidget {
  const BitmaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.bitmaskAppBarTitle),
        centerTitle: true,
      ),
    );
  }
}
