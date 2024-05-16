#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint callvalidator.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'callvalidator'
  s.version          = '0.0.1'
  s.summary          = 'CallValidator is a Flutter Dart plugin designed to enhance code quality by validating function calls and returning a boolean value indicating their validity. With CallValidator, developers can easily check the correctness of function invocations within their Flutter applications. Whether it's ensuring the proper parameters are passed or verifying the function's existence, CallValidator offers a seamless solution for error prevention and code validation. By integrating CallValidator into your project, you can enhance your development workflow and minimize potential runtime errors, resulting in more robust and reliable Flutter applications.'
  s.description      = <<-DESC
CallValidator is a Flutter Dart plugin designed to enhance code quality by validating function calls and returning a boolean value indicating their validity. With CallValidator, developers can easily check the correctness of function invocations within their Flutter applications. Whether it's ensuring the proper parameters are passed or verifying the function's existence, CallValidator offers a seamless solution for error prevention and code validation. By integrating CallValidator into your project, you can enhance your development workflow and minimize potential runtime errors, resulting in more robust and reliable Flutter applications.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
