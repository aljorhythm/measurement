import 'package:test/test.dart';

import 'package:measurement/measurement.dart';
import 'package:measurement/unit.dart';

void main() {
  group('Distance model', () {
    test('new distance', () {
      Distance distance = Distance(1.34, DistanceUnit.KILOMETRES);
      expect(1.34, distance.value);
    });

    test('convert distance', () {
      Distance distance = Distance(1.34, DistanceUnit.KILOMETRES);
      expect(1.34, distance.getValue(DistanceUnit.KILOMETRES));
      expect(1340, distance.getValue(DistanceUnit.METRES));
      expect(0.8326371400000001, distance.getValue(DistanceUnit.MILES));
    });
  });
}
