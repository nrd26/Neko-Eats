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

List arr = [
  ['Veg Burger','assets/burger1.jpg',60,'A delicious burger made with the\nfreshest of ingredients that'
      ' are \nhandpicked from your local farms',0,1],
  ['Egg Burger','assets/burger1.jpg',80,'A delicious burger made with the\nfreshest of ingredients that'
      ' are \nhandpicked from your local farms',1,1],
  ['Chicken Burger','assets/burger1.jpg',100,'A delicious burger made with the\nfreshest of ingredients that'
    ' are \nhandpicked from your local farms',2,1],
  ['Veg Sandwich','assets/sandwich.jpg',50,'A delicious burger made with the\nfreshest of ingredients that'
      ' are \nhandpicked from your local farms',3,1],
  ['Egg Sandwich','assets/sandwich.jpg',70,'A delicious burger made with the\nfreshest of ingredients that'
      ' are \nhandpicked from your local farms',4,1],
  ['Chicken Sandwich','assets/sandwich.jpg',90,'A delicious burger made with the\nfreshest of ingredients that'
      ' are \nhandpicked from your local farms',5,1],
  ['Coca Cola','assets/coke.jpg',20,'A delicious burger made with the\nfreshest of ingredients that'
      ' are \nhandpicked from your local farms',6,1],
  ['Sprite','assets/sprite.jpg',20,'A delicious burger made with the\nfreshest of ingredients that'
      ' are \nhandpicked from your local farms',7,1],
  ['Tiramisu','assets/tiramisu.jpg',80,'A delicious burger made with the\nfreshest of ingredients that'
      ' are \nhandpicked from your local farms',8,1],
];

List cart = [];

num total = 0;

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
                tabs: const [
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
                  ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: (BuildContext context,int index) {
                        return FoodItem(
                          name: arr[index][0],
                          pic: arr[index][1],
                          price: arr[index][2],
                          desc: arr[index][3],
                          index: arr[index][4],);

                      }
                  ),
                  ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: (BuildContext context,int index) {
                        return FoodItem(
                            name: arr[index+3][0],
                            pic: arr[index+3][1],
                            price: arr[index+3][2],
                        desc: arr[index+3][3],
                        index: arr[index+3][4],);

                      }
                  ),
                  ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: 2,
                      itemBuilder: (BuildContext context,int index) {
                        return FoodItem(
                          name: arr[index+6][0],
                          pic: arr[index+6][1],
                          price: arr[index+6][2],
                          desc: arr[index+6][3],
                          index: arr[index+6][4],);

                      }
                  ),
                  ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: 1,
                      itemBuilder: (BuildContext context,int index) {
                        return FoodItem(
                          name: arr[index+8][0],
                          pic: arr[index+8][1],
                          price: arr[index+8][2],
                          desc: arr[index+8][3],
                          index: arr[index+8][4],);

                      }
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
