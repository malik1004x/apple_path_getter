import Cocoa
import FlutterMacOS

public class ApplePathGetterPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "apple_path_getter", binaryMessenger: registrar.messenger)
    let instance = ApplePathGetterPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getBundlePath":
      result(Bundle.main.bundlePath)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
