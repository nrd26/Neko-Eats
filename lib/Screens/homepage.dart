import 'package:app_prakyath/Components/carousel.dart';
import 'package:app_prakyath/Components/category.dart';
import 'package:app_prakyath/Components/food_item.dart';
import 'package:app_prakyath/Screens/control.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

var arr = [
  ['Chicken Burger','assets/burger1.jpg','100','A delicious burger made with the\nfreshest of ingredients that'
    ' are \nhandpicked from your local farms']
];
class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Carousel(),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: TabBar(
                isScrollable: true,
                    unselectedLabelColor: Colors.black38,
                    labelColor: Colors.red,
                    labelPadding: EdgeInsets.symmetric(horizontal: 25),
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(color: Colors.red, width: 2),
                      insets: EdgeInsets.symmetric(horizontal: 28),
                    ),
                tabs: [
                  Tab(text: 'Burgers',),
                  Tab(text: 'Sandwiches'),
                  Tab(text: 'Beverages'),
                  Tab(text: 'Deserts'),
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView(
                    children: [
                      FoodItem(name: arr[0][0],pic: arr[0][1],price: arr[0][2],desc: arr[0][3],),
                      // FoodItem(arr[0])
                    ],
                  ),
                  ListView(
                    children: [
                      // FoodItem(arr[0]),
                      // FoodItem(arr[0])
                    ],
                  ),
                  ListView(
                    children: [
                      // FoodItem(arr[0]),
                      // FoodItem(arr[0])
                    ],
                  ),
                  ListView(
                    children: [
                      // FoodItem(arr[0]),
                      // FoodItem(arr[0])
                    ],
                  ),
                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
