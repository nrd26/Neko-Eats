import 'package:app_prakyath/Components/profile_items.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return ListView(
      padding: EdgeInsets.only(top: 10.0),
        physics: BouncingScrollPhysics(),
        itemExtent: _height / 10,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ProfileItem(
          //   text: 'Home',
          //   icon: Icons.home,
          //   onTap: null,
          // ),
          ProfileItem(
            text: 'Order History',
            icon: Icons.history,
            onTap: (){}
          ),
          ProfileItem(
            text: 'Payment Options',
            icon: Icons.payments_outlined,
            onTap: null,
          ),
          ProfileItem(
            text: 'Manage Address',
            icon: LineIcons.addressBook,
            onTap: null,
          ),
          ProfileItem(
            text: 'Bookmarks',
            icon: LineIcons.bookmark,
            onTap: null,
          ),
          ProfileItem(
            text: 'Notifications',
            icon: LineIcons.bell,
            onTap: null,
          ),
          ProfileItem(
            text: 'User Settings',
            icon: Icons.settings_outlined,
            onTap: null,
          ),
          ProfileItem(
            text: 'About',
            icon: LineIcons.infoCircle,
            onTap: null,
          ),
          ProfileItem(
            text: 'Log Out',
            icon: Icons.logout_rounded,
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ],
    );
  }
}
