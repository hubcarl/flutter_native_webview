import Flutter

public class WebView : NSObject, FlutterPlatformView {
    let frame: CGRect;
    let viewId: Int64;
    let args: Any?
    
    init(_ frame: CGRect, viewId: Int64, args: Any?) {
        self.frame = frame;
        self.viewId = viewId;
        self.args = args;
    }
    
    public func view() -> UIView {
        let map = args as? [String: Any];
        let mUrl = map?["url"] as? String;
        let webView = UIWebView.init(frame: frame);
        let url = URL(string: mUrl ?? "");
        webView.loadRequest(URLRequest(url: url!));
        return webView;
    }
}

public class FlutterWebViewFactory: NSObject, FlutterPlatformViewFactory {
    
    public func createArgsCodec() -> FlutterMessageCodec & NSObjectProtocol {
        return FlutterStandardMessageCodec.sharedInstance()
    }
    
    public func create(withFrame frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?) -> FlutterPlatformView {
        return WebView(frame, viewId: viewId, args: args);
    }
}
