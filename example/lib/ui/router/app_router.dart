import 'dart:core';

import 'package:example/ui/screens/bitmask/bitmask_screen_route.dart';
import 'package:example/ui/screens/enum/enum_screen_route.dart';
import 'package:example/ui/screens/main/main_screen_route.dart';
import 'package:example/ui/screens/overscroll/overscroll_screen_route.dart';
import 'package:flutter/material.dart';

/// основные маршруты приложения
class AppRouter {
  static const root = '/';
  static const overscroll = '/overscroll';
  static const bitmask = '/bitmask';
  static const javaLikeEnum = '/enum';

  static final Map<String, Route Function(Object?)> routes = {
    AppRouter.root: (_) => MainScreenRoute(),
    AppRouter.overscroll: (_) => OverscrollScreenRoute(),
    AppRouter.bitmask: (_) => BitmaskScreenRoute(),
    AppRouter.javaLikeEnum: (_) => EnumScreenRoute(),
  };
}
