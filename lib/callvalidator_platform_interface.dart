import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'callvalidator_method_channel.dart';

abstract class CallvalidatorPlatform extends PlatformInterface {
  /// Constructs a CallvalidatorPlatform.
  CallvalidatorPlatform() : super(token: _token);

  static final Object _token = Object();

  static CallvalidatorPlatform _instance = MethodChannelCallvalidator();

  /// The default instance of [CallvalidatorPlatform] to use.
  ///
  /// Defaults to [MethodChannelCallvalidator].
  static CallvalidatorPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [CallvalidatorPlatform] when
  /// they register themselves.
  static set instance(CallvalidatorPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<bool?> checkForActiveCall() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
