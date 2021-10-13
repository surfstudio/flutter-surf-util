import 'package:example/ui/res/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:surf_util/surf_util.dart';

/// Пример работы DisableOverscroll
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

/// Контент таб 1 со скрытием свечения по краям
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

/// Контент таб 2 - стандартное поведение SingleChildScrollView
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

/// Для скрытия свечения используйте расширение для виджета или
/// оберните SingleChildScrollView в DisableOverscroll
extension on SingleChildScrollView {
  Widget disableOverscroll() => DisableOverscroll(child: this);
}
