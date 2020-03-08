import 'package:flutter_test/flutter_test.dart';

import 'package:measurement/measurement.dart';
import 'package:measurement/unit.dart';
import 'package:tuple/tuple.dart';

void main() {
  group('static', () {
    final converters = Distance.converters;

    test('centimetres to kilometres', () {
      final Function centiToKm =
          converters[Tuple2(DistanceUnit.CENTIMETRES, DistanceUnit.KILOMETRES)];
      expect(centiToKm(100), 0.001);
    });

    test('kilometres to centimetres', () {
      expect(
          Distance.convertValue(
              DistanceUnit.KILOMETRES, DistanceUnit.YARD, 1.34),
          1465.4374);
    });
  });
}
