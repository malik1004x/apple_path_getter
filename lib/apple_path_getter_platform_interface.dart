import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'apple_path_getter_method_channel.dart';

abstract class ApplePathGetterPlatform extends PlatformInterface {
  /// Constructs a ApplePathGetterPlatform.
  ApplePathGetterPlatform() : super(token: _token);

  static final Object _token = Object();

  static ApplePathGetterPlatform _instance = MethodChannelApplePathGetter();

  /// The default instance of [ApplePathGetterPlatform] to use.
  ///
  /// Defaults to [MethodChannelApplePathGetter].
  static ApplePathGetterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ApplePathGetterPlatform] when
  /// they register themselves.
  static set instance(ApplePathGetterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getBundlePath() {
    throw UnimplementedError('Not implemented :(');
  }
}
