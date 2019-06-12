import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NativeWebView extends StatefulWidget {
  final String url;

  NativeWebView(this.url);

  @override
  State<StatefulWidget> createState() => NativeWebViewState();
}

class NativeWebViewState extends State<NativeWebView> {

  Widget createView() {
    if (Platform.isAndroid) {
      return AndroidView(
        viewType: 'com.sky.flutter.NativeWebView',
        creationParams: {
          "url": widget.url,
        },
        creationParamsCodec: new StandardMessageCodec(),
      );
    }
    if (Platform.isIOS) {
      return UiKitView(
        viewType: 'com.sky.flutter.NativeWebView',
        creationParams: {
          "url": widget.url,
        },
        creationParamsCodec: new StandardMessageCodec(),
      );
    }
    return new Text("Not Support");
  }

  @override
  Widget build(BuildContext context) {
    return createView();
  }
}