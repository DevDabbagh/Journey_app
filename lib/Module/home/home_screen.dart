import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:journey_app/Module/home/tab_bar_widget.dart';

import 'story_widget.dart';
import 'choices_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static List types = ['Popular','Following','New','Beach','Beach','Hiking'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: types.length,
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 30,top: 30),
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 135,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index)=>Padding(
                      padding: const EdgeInsetsDirectional.only(start: 8,),
                      child: StoryWidget(index: index,),
                    ),
                    itemCount: 6,
                  ),
                ),
                const SizedBox(height: 30,),
                TabBarWidget(types: types,),
                const SizedBox(height: 14),
                Expanded(
                  child: TabBarView(children: [
                    ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) => const Padding(
                        padding: EdgeInsetsDirectional.only(bottom: 35,end: 30),
                        child: ChoicesContainer(),
                      ),
                      itemCount: types.length,
                    ),
                    ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) => const Padding(
                        padding: EdgeInsetsDirectional.only(bottom: 35,end: 30),
                        child: ChoicesContainer(),
                      ),
                      itemCount: types.length,
                    ),
                    Text('yes'),
                    Text('yes'),
                    Text('yes'),
                    Text('yes'),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
