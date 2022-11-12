import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/styles.dart';

class Headings extends StatelessWidget {
  const Headings({super.key, required this.bigText, required this.smallText});
  final String bigText;
  final String smallText;
  @override
  Widget build(BuildContext context) {
    return               Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                     Text(bigText, style: Styles.headlineStyle2,),
                     InkWell(
                       onTap: () {
                         print("You are tapped");
                       },
                       child: Text(smallText, style: Styles.textStyle.copyWith(color: Styles.primaryColor),))

                  ],
                );
  }
}