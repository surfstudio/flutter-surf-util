import 'package:example/ui/res/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:surf_util/surf_util.dart';

class BitmaskScreen extends StatefulWidget {
  const BitmaskScreen({Key? key}) : super(key: key);

  @override
  State<BitmaskScreen> createState() => _BitmaskScreenState();
}

class _BitmaskScreenState extends State<BitmaskScreen> {
  /// Settings list
  final _settings = SettingsBitmask._registered;

  /// Start code value
  final _binaryCode = <int>[0, 0, 0, 0];

  /// Start mask value
  var _mask = 0;

  /// List with mask value switched on parameters
  late List<SettingsBitmask> _currentList;

  @override
  void initState() {
    super.initState();

    _currentList = SettingsBitmask.getList(_mask);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.bitmaskAppBarTitle),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Column(
            children: _settings
                .asMap()
                .map(
                  (i, e) => MapEntry(
                    i,
                    SwitchListTile(
                      title: Text(e.description),
                      value: e.isOn(_mask),
                      onChanged: (value) {
                        setState(() {
                          if (_currentList.contains(e)) {
                            _currentList.remove(e);
                            _binaryCode[i] = 0;
                          } else {
                            _currentList.add(e);
                            _binaryCode[i] = 1;
                          }

                          _mask = Bitmask.getMask(_currentList);
                        });
                      },
                    ),
                  ),
                )
                .values
                .toList(),
          ),
          const SizedBox(height: 40),
          Text(
            'mask: $_mask',
            style: Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(height: 40),
          Text(
            '0000 ${_binaryCode.reversed.toList().join()}',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}

class SettingsBitmask extends Bitmask {
  static const SettingsBitmask darkTheme = SettingsBitmask._(
    1,
    description: 'Dark theme',
  );

  static const SettingsBitmask saveHistory = SettingsBitmask._(
    2,
    description: 'Save history',
  );

  static const SettingsBitmask newsSubscription = SettingsBitmask._(
    4,
    description: 'News subscription',
  );

  static const SettingsBitmask premiumVersion = SettingsBitmask._(
    8,
    description: 'Premium version',
  );

  /// Parameters setting list
  static const List<SettingsBitmask> _registered = [
    darkTheme,
    saveHistory,
    newsSubscription,
    premiumVersion,
  ];

  final String description;

  const SettingsBitmask._(
    int value, {
    required this.description,
  }) : super(value);

  /// Returns list with switched on parameters
  static List<SettingsBitmask> getList(int value) {
    return _registered.where((parameter) => parameter.isOn(value)).toList();
  }
}
