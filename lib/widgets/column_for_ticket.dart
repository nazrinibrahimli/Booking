import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/layout.dart';
import '../utils/styles.dart';

class ColumnTicket extends StatelessWidget {

  final String firstText;
  final String secondText;
  final bool? isColor;
  final CrossAxisAlignment alignment;
  const ColumnTicket({super.key, required this.firstText, required this.secondText, required this.alignment, this.isColor});

  @override
  Widget build(BuildContext context) {
    return         Column(
                              crossAxisAlignment: alignment,
                              children: [
                                Text(firstText, style: isColor==null? Styles.headlineStyle3.copyWith(color: Colors.white):Styles.headlineStyle3),
                                Gap(Layout.getHeight(5)),
                                Text(secondText, style: isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white):Styles.headlineStyle4),


                              ],
                            );
  }
}