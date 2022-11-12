import 'package:app/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/layout.dart';

class Hotel extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const Hotel({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Layout.getSize(context);
    return Container(
      margin: const EdgeInsets.only(right: 17,top: 5),
      width: size.width*0.6,
      height: Layout.getHeight(350),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
          height:Layout.getHeight(180),
          decoration: BoxDecoration(
            borderRadius:  BorderRadius.only( topRight: Radius.circular(24), topLeft: Radius.circular(24))  ,
            color: Styles.primaryColor,
            image:  DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "lib/assets/${hotel['image']}"

              ) )
            
          ),
        ),
        const Gap(10),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(hotel['place'], style: Styles.headlineStyle2.copyWith(color: Colors.white) ,),
        ),
        Padding(
          padding: const EdgeInsets.only(left:10),
          child: Text(hotel['destination'], style: Styles.headlineStyle4.copyWith(color: Colors.white),),
        ),
        Padding(
          padding: const EdgeInsets.only(left:10,top:15),
          child: Text("\$${hotel['price']}/night", style: Styles.headlineStyle2.copyWith(color: Colors.white),),
        ),

      ]),
    );
  }
}