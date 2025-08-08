# esim_compatibility

A Flutter plugin to check if the current device supports **eSIM**.  
Uses **native Android and iOS code** for accurate detection.

---

## Features

- ✅ Detect eSIM compatibility on Android (API 28+ / Android 9+)
- ✅ Detect eSIM compatibility on iOS (using Apple device model mapping)
- ✅ No extra permissions required
- ✅ Works on both physical devices and simulators/emulators

---

## Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  esim_compatibility: ^1.0.0
````

Then run:

```bash
flutter pub get
```

---

## Usage

```dart
import 'package:esim_compatibility/esim_compatibility.dart';

void main() async {
  final isCompatible = await EsimCompatibility.isEsimCompatible();

  if (isCompatible) {
    print("✅ Device supports eSIM");
  } else {
    print("❌ Device does not support eSIM");
  }
}
```

---

## Android Implementation

* Checks **API Level >= 28 (Android 9)**.
* Uses `EuiccManager.isEnabled()` to confirm eSIM support.
* Your exact original method is used internally.

---

## iOS Implementation

* Detects the device model (`UIDevice`).
* Compares against a list of known eSIM-supported Apple devices.
* Logic exactly matches your provided iOS code.

---

## Example Output

```plaintext
✅ Device supports eSIM
❌ Device does not support eSIM
```

---

## Supported Platforms

| Platform | Supported |
| -------- | --------- |
| Android  | ✅         |
| iOS      | ✅         |
| Web      | ❌         |
| macOS    | ❌         |
| Windows  | ❌         |
| Linux    | ❌         |

---

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.

---

## Author

Developed by **Code with Ejaz**
📧 [ejazrahim420@gmail.com](mailto:ejazrahim420@gmail.com)

```

---
# esim_compatibility
