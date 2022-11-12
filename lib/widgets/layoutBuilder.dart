import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int sections;

  const LayoutBuilderWidget({super.key, required this.sections, this.isColor});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
                        builder: (BuildContext context , BoxConstraints constraints ) { 
                          return   Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                          children: List.generate((constraints.constrainWidth()/6).floor(), (index) =>  SizedBox(width: 3, height: 1,child: DecoratedBox(
                            decoration:
                             BoxDecoration(color: isColor==null? Colors.white:Colors.grey.shade300))) ),
                          
                        );
                        
                         },
                        
                      );
  }
}