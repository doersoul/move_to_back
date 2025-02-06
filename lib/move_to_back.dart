import 'move_to_back_platform_interface.dart';

class MoveToBack {
  static Future<String?> execute() {
    return MoveToBackPlatform.instance.execute();
  }
}
