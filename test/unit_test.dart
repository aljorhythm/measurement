import 'package:flutter_test/flutter_test.dart';
import 'package:measurement/unit.dart';
import 'package:tuple/tuple.dart';

main() {
  group('static', () {
    final converters = DistanceConversion.converters;

    test('centimetres to kilometres', () {
      final Function centiToKm =
          converters[Tuple2(DistanceUnit.CENTIMETRES, DistanceUnit.KILOMETRES)];
      expect(0.001, centiToKm(100));
    });

    test('kilometres to centimetres', () {
      expect(
          1465.4374,
          DistanceConversion.convertValue(
              DistanceUnit.KILOMETRES, DistanceUnit.YARD, 1.34));
    });
  });
}
