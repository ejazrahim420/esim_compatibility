import 'esim_compatibility_platform_interface.dart';
import 'dart:async';
import 'package:flutter/services.dart';

class EsimCompatibility {
  static const MethodChannel _channel = MethodChannel('esim_compatibility');

  static Future<bool> isEsimCompatible() async {
    final result = await _channel.invokeMethod<bool>('isEsimCompatible');
    return result ?? false;
  }

  Future<String?> getPlatformVersion() {
    return EsimCompatibilityPlatform.instance.getPlatformVersion();
  }
}
