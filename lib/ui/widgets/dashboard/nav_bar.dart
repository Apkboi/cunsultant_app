import 'dart:developer';

import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key, required this.navItem, required this.onTap})
      : super(key: key);

  final List<NavItemModel> navItem;
  final Function(int index) onTap;

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var items = List.generate(
        widget.navItem.length,
        (index) => Expanded(
              child: GestureDetector(
                onTap: () {
                  widget.onTap(index);
                  _switchTab(index);
                  log(index.toString());
                },
                child: NavItem(
                  navItem: widget.navItem[index],
                  isSelected: index == _selectedIndex,
                ),
              ),
            ));

    if (widget.navItem.length > 3) {
      items.insert(2, const Expanded(child: SizedBox()));
    }

    return BottomAppBar(
      height: 60,

      child: Row(
        children: items,
      ),
    );
  }

  void _switchTab(int index) {
    _selectedIndex = index;

    setState(() {});
  }
}

class NavItem extends StatefulWidget {
  final NavItemModel navItem;
  final bool isSelected;

  const NavItem({
    Key? key,
    required this.navItem,
    required this.isSelected,
  }) : super(key: key);

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        widget.navItem.icon,
        const SizedBox(
          height: 6,
        ),
        widget.isSelected
            ? const CircleAvatar(
                radius: 3,
                backgroundColor: Colors.red,
              )
            : const SizedBox()
      ],
    );
  }
}

class NavItemModel {
  final VoidCallback onTap;
  final Widget icon;

  NavItemModel(
    this.onTap,
    this.icon,
  );
}
