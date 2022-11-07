


import 'package:get/get.dart';

class BaseGetxController extends GetxController {

  bool _isLoadingRequest = false;

  setLoading(bool isLoad) {
    _isLoadingRequest = isLoad;
    update ();
  }


}
