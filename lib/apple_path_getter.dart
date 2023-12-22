
import 'apple_path_getter_platform_interface.dart';
import 'dart:ffi';

final DynamicLibrary nativeAddLib = DynamicLibrary.process();

class ApplePathGetter {
  Future<String?> getBundlePath() {
    return ApplePathGetterPlatform.instance.getBundlePath();
  }
}
