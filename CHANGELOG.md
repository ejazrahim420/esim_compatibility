## 1.0.3

- Updated iOS device model list with newer Apple devices.
- Added eSIM-compatible iPhones: 16e, 17 / 17 Pro / 17 Pro Max, Air, 17e, 18 Pro / 18 Pro Max, Duo.
- Added newer iPad models: Air M2/M3/M4, A16, mini A17 Pro, Pro M4/M5 and related generations.

## 1.0.2

- Decreased the min sdk version.

## 1.0.1

- Initial release.
- Added Android support:
  - Detects API level >= 28 (Android 9).
  - Uses `EuiccManager.isEnabled()` to check eSIM support.
- Added iOS support:
  - Detects device model.
  - Compares against known eSIM-compatible Apple devices.
- Provided simple Dart API:
  - `EsimCompatibility.isEsimCompatible()` returns `true` or `false`.

## 1.0.0

- Initial release.
- Added Android support:
  - Detects API level >= 28 (Android 9).
  - Uses `EuiccManager.isEnabled()` to check eSIM support.
- Added iOS support:
  - Detects device model.
  - Compares against known eSIM-compatible Apple devices.
- Provided simple Dart API:
  - `EsimCompatibility.isEsimCompatible()` returns `true` or `false`.
