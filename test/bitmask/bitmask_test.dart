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

class TestBitmask extends Bitmask {
  static const TestBitmask zeroBit = TestBitmask._(
    1,
    description: 'zero bit',
  );

  static const TestBitmask firstBit = TestBitmask._(
    2,
    description: 'the first bit',
  );

  static const TestBitmask secondBit = TestBitmask._(
    4,
    description: 'the second bit',
  );

  static const TestBitmask thirdBit = TestBitmask._(
    8,
    description: 'the third bit',
  );

  final String description;

  const TestBitmask._(
    int value, {
    required this.description,
  }) : super(value);
}

/// binary representation
/// 0000 0101 -> 5

Map<int, List<TestBitmask>> testedData = {
  0: [],
  1: const [TestBitmask.zeroBit],
  2: const [TestBitmask.firstBit],
  3: const [TestBitmask.zeroBit, TestBitmask.firstBit],
  4: const [TestBitmask.secondBit],
  5: const [TestBitmask.zeroBit, TestBitmask.secondBit],
  6: const [TestBitmask.firstBit, TestBitmask.secondBit],
  7: const [TestBitmask.zeroBit, TestBitmask.firstBit, TestBitmask.secondBit],
  8: const [TestBitmask.thirdBit],
  9: const [TestBitmask.zeroBit, TestBitmask.thirdBit],
  10: const [TestBitmask.firstBit, TestBitmask.thirdBit],
  11: const [TestBitmask.zeroBit, TestBitmask.firstBit, TestBitmask.thirdBit],
  12: const [TestBitmask.secondBit, TestBitmask.thirdBit],
  13: const [TestBitmask.zeroBit, TestBitmask.secondBit, TestBitmask.thirdBit],
  14: const [TestBitmask.firstBit, TestBitmask.secondBit, TestBitmask.thirdBit],
  15: const [TestBitmask.zeroBit, TestBitmask.firstBit, TestBitmask.thirdBit, TestBitmask.thirdBit],
};

void main() {
  test(
    'getMask returns aggregated mask ${testedData.entries.elementAt(0).key} for provided values',
    () {
      expect(
        Bitmask.getMask(testedData.entries.elementAt(0).value),
        equals(testedData.entries.elementAt(0).key),
      );
    },
  );

  test(
    'getMask returns aggregated mask ${testedData.entries.elementAt(1).key} for provided values',
    () {
      expect(
        Bitmask.getMask(testedData.entries.elementAt(1).value),
        equals(testedData.entries.elementAt(1).key),
      );
    },
  );

  test(
    'getMask returns aggregated mask ${testedData.entries.elementAt(2).key} for provided values',
    () {
      expect(
        Bitmask.getMask(testedData.entries.elementAt(2).value),
        equals(testedData.entries.elementAt(2).key),
      );
    },
  );

  test(
    'getMask returns aggregated mask ${testedData.entries.elementAt(3).key} for provided values',
    () {
      expect(
        Bitmask.getMask(testedData.entries.elementAt(3).value),
        equals(testedData.entries.elementAt(3).key),
      );
    },
  );

  test(
    'getMask returns aggregated mask ${testedData.entries.elementAt(4).key} for provided values',
    () {
      expect(
        Bitmask.getMask(testedData.entries.elementAt(4).value),
        equals(testedData.entries.elementAt(4).key),
      );
    },
  );

  test(
    'getMask returns aggregated mask ${testedData.entries.elementAt(5).key} for provided values',
    () {
      expect(
        Bitmask.getMask(testedData.entries.elementAt(5).value),
        equals(testedData.entries.elementAt(5).key),
      );
    },
  );

  test(
    'getMask returns aggregated mask ${testedData.entries.elementAt(6).key} for provided values',
    () {
      expect(
        Bitmask.getMask(testedData.entries.elementAt(6).value),
        equals(testedData.entries.elementAt(6).key),
      );
    },
  );

  test(
    'getMask returns aggregated mask ${testedData.entries.elementAt(7).key} for provided values',
    () {
      expect(
        Bitmask.getMask(testedData.entries.elementAt(7).value),
        equals(testedData.entries.elementAt(7).key),
      );
    },
  );

  test(
    'getMask returns aggregated mask ${testedData.entries.elementAt(8).key} for provided values',
    () {
      expect(
        Bitmask.getMask(testedData.entries.elementAt(8).value),
        equals(testedData.entries.elementAt(8).key),
      );
    },
  );

  test(
    'getMask returns aggregated mask ${testedData.entries.elementAt(9).key} for provided values',
    () {
      expect(
        Bitmask.getMask(testedData.entries.elementAt(9).value),
        equals(testedData.entries.elementAt(9).key),
      );
    },
  );

  test(
    'getMask returns aggregated mask ${testedData.entries.elementAt(10).key} for provided values',
    () {
      expect(
        Bitmask.getMask(testedData.entries.elementAt(10).value),
        equals(testedData.entries.elementAt(10).key),
      );
    },
  );

  test(
    'getMask returns aggregated mask ${testedData.entries.elementAt(11).key} for provided values',
    () {
      expect(
        Bitmask.getMask(testedData.entries.elementAt(11).value),
        equals(testedData.entries.elementAt(11).key),
      );
    },
  );

  test(
    'getMask returns aggregated mask ${testedData.entries.elementAt(12).key} for provided values',
    () {
      expect(
        Bitmask.getMask(testedData.entries.elementAt(12).value),
        equals(testedData.entries.elementAt(12).key),
      );
    },
  );

  test(
    'getMask returns aggregated mask ${testedData.entries.elementAt(13).key} for provided values',
    () {
      expect(
        Bitmask.getMask(testedData.entries.elementAt(13).value),
        equals(testedData.entries.elementAt(13).key),
      );
    },
  );

  test(
    'getMask returns aggregated mask ${testedData.entries.elementAt(14).key} for provided values',
    () {
      expect(
        Bitmask.getMask(testedData.entries.elementAt(14).value),
        equals(testedData.entries.elementAt(14).key),
      );
    },
  );

  test('isOn returns true if checked value contains provided mask', () {
    expect(TestBitmask.zeroBit.isOn(1), isTrue);
    expect(TestBitmask.thirdBit.isOn(15), isTrue);
    expect(TestBitmask.firstBit.isOn(8), isFalse);
  });
}
