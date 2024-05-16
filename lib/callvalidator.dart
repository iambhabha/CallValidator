
import 'callvalidator_platform_interface.dart';

class Callvalidator {
}
  Future<String?> getPlatformVersion() {
    return CallvalidatorPlatform.instance.getPlatformVersion();
  }
  Future<String?> checkForActiveCall() {
    return CallvalidatorPlatform.instance.checkForActiveCall();
  }
