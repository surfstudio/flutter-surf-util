import 'package:example/ui/res/app_strings.dart';
import 'package:flutter/material.dart';

class EnumScreen extends StatelessWidget {
  const EnumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.enumAppBarTitle),
        centerTitle: true,
      ),
    );
  }
}
