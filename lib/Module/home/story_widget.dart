import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 135,
      padding: const EdgeInsetsDirectional.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        image: DecorationImage(
          image: const NetworkImage('https://th.bing.com/th/id/OIP.8qYDLWtXrQrlL9IJPwCu_gHaE8?pid=ImgDet&w=480&h=320&rs=1',),
          fit: BoxFit.fill,
          colorFilter: index==0?const ColorFilter.mode(Color(0x99000000), BlendMode.dstATop):null,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _buildStack(),
          const SizedBox(height: 30,),
          const Text('Jonathan',style: TextStyle(fontSize: 8,color: Colors.white),),
        ],
      ),
    );
  }
  Widget _buildStack(){
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      clipBehavior: Clip.none,

      children: [
        ExtendedImage.network('https://th.bing.com/th/id/R.9438fb8859c0827fca3721646f567e58?rik=VOqmebYIWK2wdw&pid=ImgRaw&r=0',
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(9),
          fit: BoxFit.fill,
          width: 30,
          height: 30,
          cache: true,
        ),
        Visibility(
          visible: index == 0,
          child: Positioned(
              bottom: -5,
              child: Container(
                height: 10,
                width: 10,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: SvgPicture.asset(
                  'assets/images/plus.svg',
                  color: Colors.deepOrange,
                  fit: BoxFit.none,
                ),
              )),
        ),
      ],
    );
  }
}
