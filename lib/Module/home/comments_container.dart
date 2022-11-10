import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CommentsContainer extends StatelessWidget {
  const CommentsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 39,
      width: 107,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: Colors.white
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/heart.svg',color: Colors.deepOrange,fit: BoxFit.none,),
          const SizedBox(width: 5,),
          const Text('2,145',style: TextStyle(fontSize: 8,),),
          const SizedBox(width: 10,),
          SvgPicture.asset('assets/images/comment.svg',color: Colors.deepOrange,fit: BoxFit.none,),
          const SizedBox(width: 5,),
          const Text('657',style: TextStyle(fontSize: 8,),),
        ],
      ),
    );
  }
}
