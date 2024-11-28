import 'package:flutter_test/flutter_test.dart';
import 'package:flash_light_plugin/flash_light_plugin.dart';
import 'package:flash_light_plugin/flash_light_plugin_platform_interface.dart';
import 'package:flash_light_plugin/flash_light_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlashLightPluginPlatform
    with MockPlatformInterfaceMixin
    implements FlashLightPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlashLightPluginPlatform initialPlatform = FlashLightPluginPlatform.instance;

  test('$MethodChannelFlashLightPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlashLightPlugin>());
  });

  test('getPlatformVersion', () async {
    FlashLightPlugin flashLightPlugin = FlashLightPlugin();
    MockFlashLightPluginPlatform fakePlatform = MockFlashLightPluginPlatform();
    FlashLightPluginPlatform.instance = fakePlatform;

    expect(await flashLightPlugin.getPlatformVersion(), '42');
  });
}
