
import 'package:flutter/material.dart';
import 'package:katensha/screens/chat.dart';
import 'package:katensha/screens/detail.dart';
import 'package:katensha/screens/home.dart';
import 'package:katensha/screens/account.dart';


class Layout extends StatefulWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {

  // this is where all the state of the app is updated 
  var pageIndex =0;
  final _pageOptions = [
    HomePage(),
    const ChatePage(),
    const AccountPage(),
    const DetailPage(),
    
  ];
  // void currentPageIndex(){
  // setState((){
  //   pageIndex = pageIndex + 1;
  // });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
        body:_pageOptions[pageIndex],

        bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
              ),

            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat'
              ),

            // BottomNavigationBarItem(
            //   icon: Icon(Icons.person),
            //   label: 'account',
            //   ),

            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'account',
              )
          ],
           onTap: (index){
            setState(() {
              pageIndex = index;
            });
          },
          selectedItemColor: Colors.yellow,
          currentIndex:pageIndex ,
          ),
    );
    
  }
}