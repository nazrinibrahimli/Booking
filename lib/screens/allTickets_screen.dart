import 'package:app/screens/tabs.dart';
import 'package:app/screens/ticket.dart';
import 'package:app/utils/infoList.dart';
import 'package:app/utils/styles.dart';
import 'package:app/widgets/column_for_ticket.dart';
import 'package:app/widgets/layoutBuilder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/layout.dart';
import 'package:app/screens/tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';



class AllTicketsScreen extends StatelessWidget {
  const AllTicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = Layout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children:[
           ListView(
             padding: EdgeInsets.symmetric(horizontal: Layout.getHeight(20), vertical: Layout.getHeight(20)),
                children: [
                  Gap(Layout.getHeight(40)),
                  Text("Tickets", style: Styles.headlineStyle1,),
                  Gap(Layout.getHeight(20)),
                  const Tabs(firstTab: "Upcoming", secondTab: "Previous"),
                  Gap(Layout.getHeight(20)),
                  Container(
                    padding: EdgeInsets.only(left: Layout.getHeight(15)),
                    child: Ticket(ticket: ticketList[0],isColor: true,),
                  ),
                  SizedBox(height: 1,),
                  Container(
                         decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(21),
                            bottomRight: Radius.circular(21)
                          ),
                    color: Colors.white,

                          ),
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 18),
                    margin: EdgeInsets.symmetric(horizontal: 15),

                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            ColumnTicket(firstText: "Flutter DB", secondText: "Passengers", alignment: CrossAxisAlignment.start,isColor: false,),
                            ColumnTicket(firstText: "8599 1245 77AC", secondText: "Passport ID", alignment: CrossAxisAlignment.end, isColor: false,),


                          ],
                        ),
                        Gap(Layout.getHeight(20)) ,

                        const LayoutBuilderWidget(sections: 15, isColor: false,),
                                                Gap(Layout.getHeight(20)) ,

                               Row(
                                 
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: 
                          const [
                            ColumnTicket(firstText: "0055 444 889153", secondText: "Number of E-ticket", alignment: CrossAxisAlignment.start,isColor: false,),
                            ColumnTicket(firstText: "C8975RT", secondText: "Booking code", alignment: CrossAxisAlignment.end, isColor: false,),


                          ],
                          
                        ),
                        Gap(Layout.getHeight(20)) ,
                        const LayoutBuilderWidget(sections: 15, isColor: false,),
                        Gap(Layout.getHeight(20)) ,
                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                    
                            
                            Column(children: [
                              
                              Row(
                                
                                children:[
                      //             Container(
                      //               decoration: BoxDecoration(
                      //  image: const DecorationImage(
                      //     fit: BoxFit.cover,
                      //     image: AssetImage(
                      //       "lib/assets/Visa.png"
                      //     ))),
                      //             ),
                         

                                  
                                Text(" *** 9678", style: Styles.headlineStyle3,),
                                


                                ]

                              ),
                              Gap(5),
                              Text("Payment method", style: Styles.headlineStyle4,)
                            ],
                            
                            
                            ),
                            ColumnTicket(firstText: "\$289.99", secondText: "Price", alignment: CrossAxisAlignment.end,isColor: false,),

                          ],
                        )

                        ,
                        
                        Container(     
                        
                        padding: const EdgeInsets.only(top:16, bottom: 15),
                          child:
                           Container(
                          padding: EdgeInsets.symmetric(horizontal: Layout.getHeight(14)),
                          

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(Layout.getHeight(10)),
                              child: BarcodeWidget(
                              barcode: Barcode.code128(),
                              data: 'https://github.com/martinovovo',
                              drawText: false,
                              color: Styles.textColor,
                              width: double.infinity,
                              height: 70,
                            
                            
                              ),
                            ),
                          ),

                          
                        ),
                    

                      ],


                      
                    ),

                    
                  ),
                  Gap(Layout.getHeight(20)),
                              Container(
                                     padding: EdgeInsets.only(left: Layout.getHeight(15)),
                                    child: Ticket(ticket: ticketList[0],),
                  ),

                ],
        ),]
      ),




    );
  }
}