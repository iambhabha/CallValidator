import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'callvalidator_platform_interface.dart';

/// An implementation of [CallvalidatorPlatform] that uses method channels.
class MethodChannelCallvalidator extends CallvalidatorPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('callvalidator');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
   Future<bool> checkForActiveCall() async {
    try {
      final bool isInCall =
      await methodChannel.invokeMethod('checkForActiveCall');
      return isInCall;
    } on PlatformException catch (e) {
      // Handle error here
      return false;
    }
  }
}
