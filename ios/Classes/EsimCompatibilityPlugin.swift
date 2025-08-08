import Flutter
import UIKit

public class EsimCompatibilityPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "esim_compatibility", binaryMessenger: registrar.messenger())
    let instance = EsimCompatibilityPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "isEsimCompatible":
      let ok = UIDevice.current.isEsimCompatible()
      result(ok)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
