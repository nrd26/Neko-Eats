import 'package:app_prakyath/Components/carousel.dart';
import 'package:app_prakyath/Components/category.dart';
import 'package:app_prakyath/Components/food_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Carousel(),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: CategoryList(),
        ),
        FoodItem(),
        FoodItem()
      ],
    );
  }
}
