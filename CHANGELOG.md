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
