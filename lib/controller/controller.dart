import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class PasswordVisibilityController extends GetxController {
  RxBool isVisible = false.obs;
  changeVisibility() {
    if (isVisible.value) {
      isVisible.value = false;
    } else {
      isVisible.value = true;
    }
  }
}
