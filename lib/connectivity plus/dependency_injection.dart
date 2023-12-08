import 'package:get/get.dart';
import 'package:shared_preference/connectivity%20plus/connectivity_plus.dart';

class DependencyInjection {
  static void init() {
    Get.put<ConnectivityPlus>(ConnectivityPlus(), permanent: true);
  }
}
