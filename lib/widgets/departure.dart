import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/layout.dart';
import '../utils/styles.dart';

class Departure extends StatelessWidget {
  final IconData icon;
  final String text;
  const Departure({Key? key, required this.icon, required this.text}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container
    (
      padding: EdgeInsets.symmetric(vertical:Layout.getWidth(12),horizontal:Layout.getWidth(12)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Layout.getWidth(10)),
      ),
        child: Row(
          children: [
             Icon(icon, color:Color(0xFFBFC2DF),),
            Gap(Layout.getWidth(10)),
            Text(text, style: Styles.textStyle,)
          ]
        )
     
        
      
    );
  }
}