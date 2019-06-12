import 'package:flutter/material.dart';
import 'package:flutter_native_webview/flutter_native_webview.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: NativeWebView("https://pub.dev/"),
      ),
    );
  }
}
