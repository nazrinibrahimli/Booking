import 'package:app/screens/hotel.dart';
import 'package:app/screens/ticket.dart';
import 'package:app/utils/infoList.dart';
import 'package:app/widgets/headings.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/styles.dart';

class HomeScreen
 extends StatelessWidget {
  const HomeScreen
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(45),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children:  [
                            Text("Good morning", style: Styles.headlineStyle3,),
                            // SizedBox(height: 5,),
                            const Gap(5),
                           Text("Book Tickets", style: Styles.headlineStyle1,)
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "lib/assets/logo.jpeg"
                          ))
                      ),
                    )
                  ],
                ),
                const Gap(20),
                Container(  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD)
                ),
                  padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 13),

                  child: Row(

                  children: [
                    const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205)),
                    Text("Search",
                    style: Styles.headlineStyle4,) 
                  ],

                )),
                const Gap(40),
           Headings(bigText: "Upcoming Flights", smallText: "View all")
             
            ]),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left:20)
            ,
            child: Row(children: ticketList.map((singleTicket) => Ticket(ticket: singleTicket)).toList() )
            ,
          ),
       
       const Gap(15),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child:   const     Headings(bigText: "Hotels", smallText: "View all")   
            ),
       
        
        const Gap(15),
        SingleChildScrollView(  scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left:20),
            child: Row(children: hotelList.map((singleHotel) => Hotel(hotel: singleHotel)).toList())
            ,
            ),

        ],
      ),

    ); 
  }
}