# flutter_native_webview

Flutter Use Native WebView

## Getting Started

#### Create

```
flutter create --template=plugin --org com.sky -i swift -a java flutter_native_webview
```

#### Check

```
flutter packages pub publish --dry-run
```

#### Publish

```
flutter packages pub publish
```

#### Running

```
cd example
flutter run
```


## Configuration

- Trying to embed a platform view but the PrerollContext does not support embedding

```
在iOS工程的info.plist文件中添加键值对key=io.flutter.embedded_views_preview value=YES
```

## Document

https://flutter.dev/docs/development/packages-and-plugins/developing-packages