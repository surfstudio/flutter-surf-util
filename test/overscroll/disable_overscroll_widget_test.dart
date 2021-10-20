import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:surf_util/src/ui/widget/disable_overscroll_widget.dart';

void main() {
  testWidgets(
      'тестирование виджета на отсутствие GlowingOverscrollIndicator',
          (tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: DisableOverscroll(
                child: SingleChildScrollView(
                  child: Column(
                    children: Colors.primaries
                        .map(
                          (color) =>
                          Container(
                            height: 100,
                            color: color,
                          ),
                    )
                        .toList(),
                  ),
                ),
              ),
            ),
          ),
        );

        final singleChildScrollView = find.byType(SingleChildScrollView);
        expect(singleChildScrollView, findsOneWidget);

        await tester.drag(singleChildScrollView, const Offset(0, -1000));
        await tester.pump();

        final glowingOverscrollIndicator = find.byWidgetPredicate((widget) =>
        widget is GlowingOverscrollIndicator);
        expect(glowingOverscrollIndicator, findsOneWidget);


        final scrollConfiguration = find.byWidgetPredicate((widget) =>
        widget is ScrollConfiguration);
        expect(scrollConfiguration, findsOneWidget);

        // expect(glowingOverscrollIndicator, findsNothing);
      },



  );
}
