import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/layout.dart';

class Tabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const Tabs({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = Layout.getSize(context);

    return         FittedBox(
          child: Container(
            padding: const EdgeInsets.all(3.5),
            child: Row(
              children: [
                Container(  
                  width: size.width*.44,
                  padding: EdgeInsets.symmetric(vertical: Layout.getHeight(7)),     
                     decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(Layout.getHeight(50))),
                        color:Colors.white,
            ),
            child:  Center(child: Text(firstTab)),
            ),
        
        
             Container(  
                    width: size.width*.44,
                    padding: EdgeInsets.symmetric(vertical: Layout.getHeight(7)),     
                       decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(right: Radius.circular(Layout.getHeight(50))),
                          color:Colors.transparent,
              ),
              child:  Center(child: Text(secondTab)),
                   ),
             
        
            ],
            ),
          ),

                
        );
  }
}