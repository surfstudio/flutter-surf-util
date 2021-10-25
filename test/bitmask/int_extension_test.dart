// Copyright (c) 2019-present,  SurfStudio LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter_test/flutter_test.dart';
import 'package:surf_util/src/bitmask/bitmask.dart';
import 'package:surf_util/src/bitmask/int_extension.dart';

class TestBitmask extends Bitmask {
  static const TestBitmask zeroBit = TestBitmask._(1);

  static const TestBitmask firstBit = TestBitmask._(2);

  static const TestBitmask secondBit = TestBitmask._(4);

  static const TestBitmask thirdBit = TestBitmask._(8);

  const TestBitmask._(int value) : super(value);
}

void main() {
  test('isOn returns true if checked value contains provided mask', () {
    expect(0.isOn(TestBitmask.zeroBit), isFalse); // 0000 0000
    expect(5.isOn(TestBitmask.firstBit), isFalse); // 0000 0101
    expect(5.isOn(TestBitmask.secondBit), isTrue); // 0000 0101
    expect(8.isOn(TestBitmask.secondBit), isFalse); // 0000 1000
    expect(15.isOn(TestBitmask.secondBit), isTrue); // 0000 1111
  });
}
