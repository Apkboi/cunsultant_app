import 'dart:developer';

import 'package:cunsultant_app/ui/screens/account/account.dart';
import 'package:cunsultant_app/ui/screens/add_screen/add_screen.dart';
import 'package:cunsultant_app/ui/screens/chats/chat_screen.dart';
import 'package:cunsultant_app/ui/screens/community/community.dart';
import 'package:cunsultant_app/ui/screens/home/home_screen.dart';
import 'package:cunsultant_app/ui/widgets/dashboard/nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int selectindex = 0;
  static List<StatefulWidget> pages = [
    const HomeScreen (),
    const Community(),
    const ChatScreen(),
    const Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(CupertinoPageRoute(builder: (index)=>const AddDoctor()));
        },
        shape: const CircleBorder(eccentricity: 0.7),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: IndexedStack(index: selectindex, children: pages),

    bottomNavigationBar: NavBar(

        navItem: [

          NavItemModel(
            () {},
            const Icon(Iconsax.home),
          ),
          NavItemModel(
            () {},
            const Icon(Iconsax.creative_commons),
          ),
          NavItemModel(
            () {},
            const Icon(Iconsax.message),
          ),
          NavItemModel(
            () {},
            const Icon(Icons.person_add),
          ),

        ],
        onTap: (int index) {
          log('index is $index');
          _switchTap(index);
        },


      ),


    );


  }
  _switchTap(int index) {
    setState(() {
      selectindex = index;
    });
  }
}
