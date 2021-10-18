import 'package:example/ui/res/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:surf_util/surf_util.dart';

/// DisableOverscroll sample
class OverscrollScreen extends StatelessWidget {
  const OverscrollScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.overscrollAppBarTitle),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: TabBar(
              tabs: [
                Tab(
                  text: AppStrings.overscrollTab1,
                ),
                Tab(
                  text: AppStrings.overscrollTab2,
                ),
              ],
            ),
          ),
          centerTitle: true,
        ),
        body: const TabBarView(
          children: [
            _ContentTabOneWidget(),
            _ContentTabTwoWidget(),
          ],
        ),
      ),
    );
  }
}

/// Content tab 1 with border glow hiding
class _ContentTabOneWidget extends StatelessWidget {
  const _ContentTabOneWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DisableOverscroll(
      child: SingleChildScrollView(
        child: Column(
          children: Colors.primaries
              .map(
                (color) => Container(
                  height: 100,
                  color: color,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

/// Content tab 2 with standard behavior SingleChildScrollView
class _ContentTabTwoWidget extends StatelessWidget {
  const _ContentTabTwoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: Colors.primaries
            .map(
              (color) => Container(
                height: 100,
                color: color,
              ),
            )
            .toList(),
      ),
    );
  }
}
