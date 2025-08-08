import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'esim_compatibility_platform_interface.dart';

/// An implementation of [EsimCompatibilityPlatform] that uses method channels.
class MethodChannelEsimCompatibility extends EsimCompatibilityPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('esim_compatibility');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
