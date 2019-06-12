package com.sky.flutter_native_webview;


import io.flutter.plugin.common.PluginRegistry.Registrar;
import io.flutter.plugin.common.StandardMessageCodec;

/** FlutterNativeWebviewPlugin */
public class FlutterNativeWebviewPlugin {
  /** Plugin registration. */
  public static void registerWith(Registrar registrar) {
    registrar.platformViewRegistry().registerViewFactory("com.sky.flutter.NativeWebView", new NativeWebViewFactory(new StandardMessageCodec()));
  }
}
