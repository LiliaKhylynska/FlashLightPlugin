import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flash_light_plugin_method_channel.dart';

abstract class FlashLightPluginPlatform extends PlatformInterface {
  /// Constructs a FlashLightPluginPlatform.
  FlashLightPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlashLightPluginPlatform _instance = MethodChannelFlashLightPlugin();

  /// The default instance of [FlashLightPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlashLightPlugin].
  static FlashLightPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlashLightPluginPlatform] when
  /// they register themselves.
  static set instance(FlashLightPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
