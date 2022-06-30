import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class MainController extends GetxController {
  RxInt navIndex = RxInt(0);

  changeNavIdx(int idx) {
    navIndex.value = idx;
  }
}
