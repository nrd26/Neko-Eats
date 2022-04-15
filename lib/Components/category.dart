import 'package:flutter/material.dart';
import 'category_item.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 60.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CategoryItem(
              title: "Burgers",
              isActive: true,
              press: () {},
            ),
            CategoryItem(
              title: "Sandwiches",
              press: () {},
            ),
            CategoryItem(
              title: "Beverages",
              press: () {},
            ),
            CategoryItem(
              title: "Deserts",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}