
import Flutter

public class SwiftFlutterNativeWebviewPlugin: NSObject, FlutterPlugin {
   public static func register(with registrar: FlutterPluginRegistrar) {
        registrar.register(FlutterWebViewFactory(), withId: "com.sky.flutter.NativeWebView");
   }
}