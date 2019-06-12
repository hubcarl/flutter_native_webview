#import "FlutterNativeWebviewPlugin.h"
#import <flutter_native_webview/flutter_native_webview-Swift.h>

@implementation FlutterNativeWebviewPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterNativeWebviewPlugin registerWithRegistrar:registrar];
}
@end
