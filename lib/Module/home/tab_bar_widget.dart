import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  TabBarWidget({Key? key, required this.types}) : super(key: key);
  List types;
  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      labelColor: Colors.black,
      enableFeedback: true,
      indicatorColor: Colors.transparent,
      unselectedLabelColor: Colors.grey,
      unselectedLabelStyle: const TextStyle(fontSize: 13,fontWeight: FontWeight.w600),
      labelStyle: const TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
      tabs:types.map((e) => Text(e)).toList(),
    );
  }
}
