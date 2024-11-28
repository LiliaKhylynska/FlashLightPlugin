import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flash_light_plugin_platform_interface.dart';

/// An implementation of [FlashLightPluginPlatform] that uses method channels.
class MethodChannelFlashLightPlugin extends FlashLightPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flash_light_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
