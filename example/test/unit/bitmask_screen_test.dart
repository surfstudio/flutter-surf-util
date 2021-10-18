import 'package:example/ui/screens/bitmask/bitmask_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:surf_util/surf_util.dart';

void main() {
  group('Bitmask', () {
    test('getMask returns aggregated mask from the settings list', () {
      expect(
        Bitmask.getMask(<SettingsBitmask>[
          SettingsBitmask.darkTheme,
        ]),
        equals(1),
      );
    });

    test('getMask returns aggregated mask from the settings list', () {
      expect(
        Bitmask.getMask(<SettingsBitmask>[
          SettingsBitmask.darkTheme,
          SettingsBitmask.premiumVersion,
        ]),
        equals(9),
      );
    });

    test('getMask returns aggregated mask from the settings list', () {
      expect(
        Bitmask.getMask(<SettingsBitmask>[
          SettingsBitmask.darkTheme,
          SettingsBitmask.newsSubscription,
          SettingsBitmask.premiumVersion,
        ]),
        equals(13),
      );
    });
  });
}
