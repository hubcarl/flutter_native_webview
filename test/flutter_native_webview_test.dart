import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_native_webview/flutter_native_webview.dart';

void main() {
  testWidgets("Flutter Native WebView Test", (WidgetTester tester) async {
    // Create the Widget tell the tester to build it
    await tester.pumpWidget(NativeWebView("https://pub.dev"));

    final textFinder = find.text('Not Support');

//    findsOneWidget 一个 Widget
//    findsNothing 没有找到 Widget
//    findsWidgets 多个 Widget

    expect(textFinder, findsOneWidget);
  });
}
