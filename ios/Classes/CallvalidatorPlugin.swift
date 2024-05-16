import Flutter
import UIKit
import CallKit

public class CallvalidatorPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "callvalidator", binaryMessenger: registrar.messenger())
    let instance = CallvalidatorPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
    case "checkForActiveCall":
      let isInCall = CallUtils.checkForActiveCall()
      result(isInCall)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
