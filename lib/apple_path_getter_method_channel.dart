import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'apple_path_getter_platform_interface.dart';

/// An implementation of [ApplePathGetterPlatform] that uses method channels.
class MethodChannelApplePathGetter extends ApplePathGetterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('apple_path_getter');
  
  @override
  Future<String?> getBundlePath() async {
    final path = await methodChannel.invokeMethod<String>('getBundlePath');
    return path;
  }
}
