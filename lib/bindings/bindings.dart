import 'package:get/get.dart';

import '../../controllers/community_controller/community_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    // Register the controller so it's available throughout the app
    Get.lazyPut<CommunityController>(() => CommunityController());
  }
}