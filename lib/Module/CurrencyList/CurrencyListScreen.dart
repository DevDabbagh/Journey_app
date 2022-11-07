import 'package:flutter/material.dart';

import '../Base/BaseStatlessScreen.dart';

class CurrencyListScreen extends BaseStatelessScreen {
  // PUT CONTROLLER  if only attach to this screen
  // var CurrencyListController = Get.put<CurrencyController>();

  bool isInit = false;

  CurrencyListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isInit ? showLoading() : hideLoading(),
    );
  }
}
