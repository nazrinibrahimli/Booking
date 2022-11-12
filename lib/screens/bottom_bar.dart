import 'package:app/screens/allTickets_screen.dart';
import 'package:app/screens/home_screen.dart';
import 'package:app/screens/search.dart';
import 'package:app/screens/tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Profile_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}




class _BottomBarState extends State<BottomBar> {
int _selectedIndex = 0;


static final List<Widget>_widgetOptions = <Widget> [
const HomeScreen(),
const Search(),
const AllTicketsScreen(),
const Profile(),
]; 

void _tappedItem(int index){

setState(() {
  _selectedIndex=index;

});
// print('${_selectedIndex}');
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("Tickets")),

      body: Center(child: _widgetOptions[_selectedIndex]) ,




      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _tappedItem,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),
        type: BottomNavigationBarType.fixed,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket_sharp), label: "Tickets"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person" )

      ],),

    );
  }
}