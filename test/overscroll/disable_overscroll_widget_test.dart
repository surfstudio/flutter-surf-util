import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:surf_util/src/ui/widget/disable_overscroll_widget.dart';

void main() {
  late String _overscrollNotification;

  const startOverscroll = 'Start showing an overscroll indication';
  const emptyNotification = '';

  final app = MaterialApp(
    home: Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (notification) {
          _overscrollNotification = startOverscroll;
          return false;
        },
        child: DisableOverscroll(
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
        ),
      ),
    ),
  );

  setUp(() {
    _overscrollNotification = emptyNotification;
  });

  testWidgets(
    'Start showing an overscroll indication',
    (tester) async {
      await tester.pumpWidget(app);

      final singleChildScrollView = find.byType(SingleChildScrollView);
      expect(singleChildScrollView, findsOneWidget);

      await tester.drag(singleChildScrollView, const Offset(0, 100));
      await tester.pump();
      expect(_overscrollNotification, startOverscroll);
    },
  );

  testWidgets(
    'There are no notifications',
    (tester) async {
      await tester.pumpWidget(app);

      final singleChildScrollView = find.byType(SingleChildScrollView);
      expect(singleChildScrollView, findsOneWidget);

      await tester.drag(singleChildScrollView, const Offset(0, -200));
      await tester.pump();
      expect(_overscrollNotification, emptyNotification);
    },
  );
}
