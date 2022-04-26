import 'package:app_prakyath/Screens/cart/cart.dart';
import 'package:app_prakyath/Screens/homepage.dart';
import 'package:app_prakyath/Services/cart.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:badges/badges.dart';

class BottomNavBar extends StatefulWidget {
  final selectedIndex;
  final onTabChanged;
  const BottomNavBar({required this.selectedIndex, required this.onTabChanged});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}



class _BottomNavBarState extends State<BottomNavBar> {


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(.1),
          )
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            gap: 8,
            activeColor: Colors.black,
            iconSize: 24,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: const Duration(milliseconds: 400),
            tabBackgroundColor: Colors.grey[100]!,
            color: Colors.black,
            tabs: [
              const GButton(
                icon: LineIcons.home,
                text: 'Home',
              ),
              const GButton(
                icon: LineIcons.search,
                text: 'Search',
              ),
              GButton(
                icon: LineIcons.shoppingCart,
                text: 'Cart',
                leading: Badge(
                  badgeColor: Colors.red.shade100,
                  elevation: 0,
                  position: BadgePosition.topEnd(top: -12, end: -12),
                  badgeContent: Text(
                    cart.length.toString(),
                    style: TextStyle(color: Colors.red.shade900),
                  ),
                  child: const Icon(
                    LineIcons.shoppingCart,
                    color: Colors.black,
                  ),
                ),
              ),
              const GButton(
                icon: LineIcons.user,
                text: 'Profile',
              ),
            ],
            selectedIndex: widget.selectedIndex,
            onTabChange: widget.onTabChanged,
          ),
        ),
      ),
    );
  }
}
