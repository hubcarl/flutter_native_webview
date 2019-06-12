#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'flutter_native_webview'
  s.version          = '0.0.1'
  s.summary          = 'Flutter Use Android And iOS Native WebView'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'https://github.com/hubcarl/flutter_native_webview'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'hubcarl@126.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'

  s.ios.deployment_target = '8.0'
end

