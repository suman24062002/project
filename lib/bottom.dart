
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:techxes/ui%201.dart';
import 'package:techxes/ui%202.dart';
import 'package:techxes/ui.dart';


class boynavi extends StatefulWidget {
  const boynavi({super.key});

  @override
  State<boynavi> createState() => _boynaviState();
}

class _boynaviState extends State<boynavi> {
  int _index = 0;

  final page = [
    const screen(),
    const hii(),
    const tech(),

  ];
  void tap(index) {
    setState(() {
      _index = index;
    });
  }

  // int _page = 0;
  // GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();



  int select=0;
  void change(int index){
    setState(() {
      select=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: page[_index],

      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GNav(

                activeColor: Colors.black,
                tabBackgroundColor: Colors.blueAccent,
                padding: const EdgeInsets.all(10),
                onTabChange: tap,
                backgroundColor: Colors.white,
                color: Colors.black,
                tabs: const [
                  GButton(icon:Icons.home, text: 'Home',),

                  GButton(icon:Icons.bookmark_border,  text: 'Save',),


                ],),
            ],
          ),
        ),
      ),
    );
  }
}