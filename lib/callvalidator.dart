import 'callvalidator_platform_interface.dart';

class Callvalidator {
  // Private constructor
  Callvalidator._();

  // Static instance variable to hold the single instance
  static final Callvalidator _instance = Callvalidator._();

  // Static method to access the single instance
  static Callvalidator get instance => _instance;

  Future<String?> getPlatformVersion() {
    return CallvalidatorPlatform.instance.getPlatformVersion();
  }

  Future<bool?> checkForActiveCall() {
    return CallvalidatorPlatform.instance.checkForActiveCall();
  }
}
