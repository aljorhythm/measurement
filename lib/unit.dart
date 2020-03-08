import "package:tuple/tuple.dart";
import 'package:trotter/trotter.dart';

enum DistanceUnit {
  METRES,
  CENTIMETRES,
  MILLIMETRES,
  KILOMETRES,
  MILES,
  FEET,
  INCHES,
  YARD,
  MICROMETRES
}

class DistanceConversion {
  static final converters = _generateConverters();

  static const Map<DistanceUnit, double> _ratiosToStandard = {
    DistanceUnit.CENTIMETRES: 100.0,
    DistanceUnit.METRES: 1.0,
    DistanceUnit.MILLIMETRES: 1000.0,
    DistanceUnit.MICROMETRES: 1000000.0,
    DistanceUnit.KILOMETRES: 1 / 1000,
    DistanceUnit.FEET: 3.28084,
    DistanceUnit.YARD: 1.09361,
    DistanceUnit.INCHES: 39.3701,
    DistanceUnit.MILES: 0.000621371
  };

  static Map<Tuple2<DistanceUnit, DistanceUnit>, Function>
      _generateConverters() {
    final perms = Permutations(2, DistanceUnit.values);
    var converters = new Map<Tuple2<DistanceUnit, DistanceUnit>, Function>();
    for (final perm in perms()) {
      converters[Tuple2(perm[0], perm[1])] = (val) =>
          (_ratiosToStandard[perm[1]] * val) / _ratiosToStandard[perm[0]];
    }
    return converters;
  }

  static convertValue(DistanceUnit from, DistanceUnit to, double value) {
    if (from == to) {
      return value;
    }
    return converters[Tuple2(from, to)](value);
  }
}
