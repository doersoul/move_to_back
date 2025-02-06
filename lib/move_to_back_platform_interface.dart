import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'move_to_back_method_channel.dart';

abstract class MoveToBackPlatform extends PlatformInterface {
  /// Constructs a MoveToBackPlatform.
  MoveToBackPlatform() : super(token: _token);

  static final Object _token = Object();

  static MoveToBackPlatform _instance = MethodChannelMoveToBack();

  /// The default instance of [MoveToBackPlatform] to use.
  ///
  /// Defaults to [MethodChannelMoveToBack].
  static MoveToBackPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MoveToBackPlatform] when
  /// they register themselves.
  static set instance(MoveToBackPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> execute() {
    throw UnimplementedError('execute() has not been implemented.');
  }
}
