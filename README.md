# measurement
![Dart CI - deploy](https://github.com/aljorhythm/measurement/workflows/Dart%20CI%20-%20deploy/badge.svg?branch=integration)

Dart library for handling units and values

## Installation

[pub.dev/measurement](https://pub.dev/packages/measurement#-installing-tab-)

## Usage

See
- [test/unit_test.dart](test/unit_test.dart) 
- [test/measurement_test.dart](test/measurement_test.dart)

### Common utilities

```dart
DistanceConversion.convertValue(
    DistanceUnit.KILOMETRES, DistanceUnit.YARD, 1.34) // 1465.4374
```
### Modelling distance and conversion

```dart
Distance distance = Distance(1.34, DistanceUnit.KILOMETRES);
distance.getValue(DistanceUnit.METRES); // 1340
distance.convert(DistanceUnit.METRES);  // Distance(1340, DistanceUnit.METRES)
```

## Design

### Default

To avoid confusion among developers, there is no default unit for a measurement. Unit must be consciously supplied. If unit is known before hand, to avoid calculation measurements can be standardized.

### Functional programming

Conversions are as far as possible generated before hand, best during compilation. Functions are looked up with O(1) complexity.

## Contribution

[package](https://flutter.dev/developing-packages/),

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
