import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'comments_container.dart';

class ChoicesContainer extends StatelessWidget {
  const ChoicesContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160,
      padding: const EdgeInsetsDirectional.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23),
        image: const DecorationImage(
          image: NetworkImage('https://th.bing.com/th/id/OIP.8qYDLWtXrQrlL9IJPwCu_gHaE8?pid=ImgDet&w=480&h=320&rs=1',),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              _buildRow(),
              const Positioned(
                top: 64,
                child: Text(
                  'June, 12 2021',
                  style: TextStyle(
                    fontSize: 8,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Positioned(
                top: 75,
                child: SizedBox(
                  width: 217,
                  child: Text(
                    'Padar Island, Caribbean Sensation in Eastern Indonesia',
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const Positioned(
                top: 125,
                child: CommentsContainer(),
              ),
              Positioned(
                top: 125,
                left: 256,
                child: Container(
                  height: 39,
                  width: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/images/replay.svg',
                      color: Colors.deepOrange,
                      fit: BoxFit.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget _buildRow(){
    return Row(
      children: [
        ExtendedImage.network('https://th.bing.com/th/id/R.9438fb8859c0827fca3721646f567e58?rik=VOqmebYIWK2wdw&pid=ImgRaw&r=0',
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(9),
          fit: BoxFit.fill,
          width: 30,
          height: 30,
          cache: true,
        ),
        const SizedBox(width: 5,),
        const Expanded(child: Text('Jonathan',style: TextStyle(fontSize: 8,color: Colors.white),)),
        SvgPicture.asset('assets/images/bookmark.svg',color: Colors.deepOrange,fit: BoxFit.none,),
      ],
    );
  }
}
