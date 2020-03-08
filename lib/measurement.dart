library measurement;

import "package:measurement/unit.dart";

class Distance {
  DistanceUnit unit;
  double value;

  Distance(this.value, this.unit);

  double getValue(DistanceUnit unit) {
    return DistanceConversion.convertValue(this.unit, unit, value);
  }

  Distance convert(DistanceUnit unit) {
    return Distance(getValue(unit), unit);
  }
}
