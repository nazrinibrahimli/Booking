import 'package:app/widgets/column_for_ticket.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/layout.dart';
import '../utils/styles.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: Layout.getHeight(20), vertical: Layout.getHeight(20)),
        children: [
          Gap(Layout.getHeight(90)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: Layout.getHeight(86),
                width: Layout.getHeight(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Layout.getHeight(20)),
                   
                       image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "lib/assets/logo.jpeg"
                          ))
                  )
                ),
                Gap(Layout.getHeight(20)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Book Tickets", style: Styles.headlineStyle1,),
                    Text("New-York", style: TextStyle(
                      fontSize: 14, 
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                    ),
                                    Gap(Layout.getHeight(8)),
                
                Container(
                  decoration: BoxDecoration( 
                    borderRadius: BorderRadius.circular(Layout.getHeight(100)),
                    color: const Color(0xFFFEF4F3)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: Layout.getHeight(3), vertical: Layout.getHeight(3)),
                  child: Row(
                    children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xFF526799)
                      ),

                      child: const Icon(FluentSystemIcons.ic_fluent_shield_filled,
                      color: Colors.white, size: 15,),
                    ),
                    Gap(Layout.getHeight(5)),
                    Text("Premium status", style: TextStyle(
                      color: Color(0xFF526799),
                      fontWeight: FontWeight.w600,
                    ),),
       

                  ]),
                
                
                )
                  ],
                ),


              
            ],
          )
        ,
                     Gap(Layout.getHeight(8)),
                    Divider(color: Colors.grey.shade300,),
                    Stack(children: [
                      Container(
                        height: Layout.getHeight(90),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Styles.primaryColor,
                          borderRadius: BorderRadius.circular(Layout.getHeight(18))
                        ),

                      )
                    ,
                    Positioned(
                      right: -45,
                      top: -40,
                      child:       Container(
                      padding: EdgeInsets.all(Layout.getHeight(30)),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(width: 18,color: Color(0xFF264CD2))
                        ),
                    )
                    ),
                    
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: Layout.getHeight(25), vertical: Layout.getHeight(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled, size:27),
                            maxRadius: 25,
                            backgroundColor: Colors.white,
                          ),
                          Gap(Layout.getHeight(12)),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("You have got a new award", style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),),
                              Text("You have 89 flights in a year", style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 16),)

                            ],
                          )
                        ],

                      ),
                    )
                    ],),
                    Gap(Layout.getHeight(25)),
                    Text("Accumulated miles", style: Styles.headlineStyle2,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: Layout.getHeight(15), vertical: Layout.getHeight(15)),
                      child: Column(children: [
                        Gap(Layout.getHeight(15)),
                        Text("198765", style: TextStyle(fontSize: 45, color: Styles.textColor, fontWeight: FontWeight.w600),),
                        Gap(Layout.getHeight(20)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Miles accrued", style: Styles.headlineStyle4.copyWith(fontSize: 16)),
                            Text("05 Nov 2022", style: Styles.headlineStyle4.copyWith(fontSize: 16))

                          ],
                        ),
                        Gap(Layout.getHeight(20)),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            ColumnTicket(firstText: "87 091", secondText: "Miles", alignment: CrossAxisAlignment.start, isColor: false,),
                            ColumnTicket(firstText: "Airline", secondText: "Received from", alignment: CrossAxisAlignment.start, isColor: false,),

                          ],
                        ),
                                                Gap(Layout.getHeight(20)),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            ColumnTicket(firstText: "42", secondText: "Miles", alignment: CrossAxisAlignment.start, isColor: false,),
                            ColumnTicket(firstText: "McDonald's", secondText: "Received from", alignment: CrossAxisAlignment.start, isColor: false,),

                          ],
                        ),
                                                Gap(Layout.getHeight(20)),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            ColumnTicket(firstText: "98 005", secondText: "Miles", alignment: CrossAxisAlignment.start, isColor: false,),
                            ColumnTicket(firstText: "Exuma", secondText: "Received from", alignment: CrossAxisAlignment.start, isColor: false,),

                          ],
                        ),


                      ],
                      ),
                      
                    ),
                    Gap(Layout.getHeight(25)),
                    InkWell(
                      onTap: () => print("You tapped"),
                      child: Center(child: Text("How to get more miles", style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w500,)))),

                    
        ],
        
      ),

    );
  }
}