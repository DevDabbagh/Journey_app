import 'package:flutter/material.dart';

import 'BaseGetxController.dart';

class BaseStatelessScreen extends StatelessWidget {

  // BaseGetxController  put
  const BaseStatelessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  showLoading(){
    BaseGetxController().setLoading(true);
  }

  hideLoading(){
    BaseGetxController().setLoading(false);
  }


}

