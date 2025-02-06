import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'move_to_back_platform_interface.dart';

/// An implementation of [MoveToBackPlatform] that uses method channels.
class MethodChannelMoveToBack extends MoveToBackPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('move_to_back');

  @override
  Future<String?> execute() async {
    return await methodChannel.invokeMethod<String>('execute');
  }
}
