import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    
    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
    let flavorChannel = FlutterMethodChannel(name: "flavor", binaryMessenger: controller.binaryMessenger)
    
    flavorChannel.setMethodCallHandler( { (call, result) -> Void in
        guard call.method == "getFlavor" else {
            result(FlutterMethodNotImplemented)
            return
        }
    
        let scheme = Bundle.main.infoDictionary!["CURRENT_SCHEME_NAME"] as! String
        result(scheme)
    })
    
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
