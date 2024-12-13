import 'package:get/get.dart';
import 'package:emeron/features/library/presentation/controllers/library.controller.dart';

class LibraryBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LibraryController());
  }
}
