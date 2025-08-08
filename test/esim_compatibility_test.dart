import 'package:flutter_test/flutter_test.dart';
import 'package:esim_compatibility/esim_compatibility.dart';
import 'package:esim_compatibility/esim_compatibility_platform_interface.dart';
import 'package:esim_compatibility/esim_compatibility_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockEsimCompatibilityPlatform
    with MockPlatformInterfaceMixin
    implements EsimCompatibilityPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final EsimCompatibilityPlatform initialPlatform = EsimCompatibilityPlatform.instance;

  test('$MethodChannelEsimCompatibility is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelEsimCompatibility>());
  });

  test('getPlatformVersion', () async {
    EsimCompatibility esimCompatibilityPlugin = EsimCompatibility();
    MockEsimCompatibilityPlatform fakePlatform = MockEsimCompatibilityPlatform();
    EsimCompatibilityPlatform.instance = fakePlatform;

    expect(await esimCompatibilityPlugin.getPlatformVersion(), '42');
  });
}
