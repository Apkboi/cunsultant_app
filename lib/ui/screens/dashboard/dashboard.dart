import 'dart:developer';

import 'package:cunsultant_app/ui/widgets/dashboard/nav_bar.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(

        onPressed: () {},
        shape:  const CircleBorder(eccentricity: 0.7),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: PageView(
        children: [],
      ),
      bottomNavigationBar: NavBar(
        navItem: [
          NavItemModel(() {},
            const Icon(Icons.home),
          ),
          NavItemModel(
            () {},
            const Icon(Icons.home),
          ),
          NavItemModel(
            () {},
            const Icon(Icons.home),
          ),
          NavItemModel(
            () {},
            const Icon(Icons.home),
          ),
        ],
        onTap: (int index) {
          log('index is $index');
        },
      ),
    );
  }
}


