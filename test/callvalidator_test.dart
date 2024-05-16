import 'package:flutter_test/flutter_test.dart';
import 'package:callvalidator/callvalidator.dart';
import 'package:callvalidator/callvalidator_platform_interface.dart';
import 'package:callvalidator/callvalidator_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockCallvalidatorPlatform
    with MockPlatformInterfaceMixin
    implements CallvalidatorPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final CallvalidatorPlatform initialPlatform = CallvalidatorPlatform.instance;

  test('$MethodChannelCallvalidator is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelCallvalidator>());
  });

  test('getPlatformVersion', () async {
    Callvalidator callvalidatorPlugin = Callvalidator();
    MockCallvalidatorPlatform fakePlatform = MockCallvalidatorPlatform();
    CallvalidatorPlatform.instance = fakePlatform;

    expect(await callvalidatorPlugin.getPlatformVersion(), '42');
  });
}
