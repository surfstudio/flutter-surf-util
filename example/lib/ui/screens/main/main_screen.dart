import 'package:example/ui/router/app_router.dart';
import 'package:example/ui/res/app_strings.dart';
import 'package:flutter/material.dart';

/// Экран с навигацией
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.mainAppBarTitle),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 30),
            TextButton(
              onPressed: () => Navigator.pushNamed(
                context,
                AppRouter.overscroll,
              ),
              child: const Text(AppStrings.buttonDisableOverscroll),
            ),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () => Navigator.pushNamed(
                context,
                AppRouter.bitmask,
              ),
              child: const Text(AppStrings.buttonBitmask),
            ),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () => Navigator.pushNamed(
                context,
                AppRouter.javaLikeEnum,
              ),
              child: const Text(AppStrings.buttonEnum),
            ),
          ],
        ),
      ),
    );
  }
}
