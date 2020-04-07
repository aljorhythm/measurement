import 'package:test/test.dart';
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

    test('kilometres to yards', () {
      expect(
          1465.4374,
          DistanceConversion.convertValue(
              DistanceUnit.KILOMETRES, DistanceUnit.YARD, 1.34));
    });

    // 一市里是半公里
    test('li to kilometres', () {
      expect(
          4094.3975,
          DistanceConversion.convertValue(
              DistanceUnit.CHINESE_LI, DistanceUnit.KILOMETRES, 8188.7950));
    });

  });
}
