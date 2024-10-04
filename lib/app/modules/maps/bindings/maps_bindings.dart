import 'package:aplikasi_wisata/app/modules/detail/views/maps_view.dart';
import 'package:get/get.dart';

class MapsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MapsView());
  }
}
