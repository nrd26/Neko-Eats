import 'package:flutter/material.dart';

class FoodItem extends StatefulWidget {
  const FoodItem({Key? key}) : super(key: key);

  @override
  _FoodItemState createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 30),
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: const Offset(
                  5.0,
                  5.0,
                ),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ),

            ],
          ),
          child: Row(
            children: [
              Column(
                children:[

                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(image: AssetImage('assets/burger1.jpg'),
                      height: 90,
                      width: 90,),
                  ),
                  TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.red),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side: BorderSide(color: Colors.red)
                              )
                          )
                      ),
                      child: Text(
                        '    Add +    ',
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                      onPressed: (){}
                  ),

              ],
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Chicken Burger',
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                      fontSize: 20
                    ),),
                    SizedBox(height: 10,),
                    Text('Rs.100',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black
                      ),),
                    SizedBox(height: 10,),
                    Text('A delicious burger made with the\nfreshest of ingredients that'
                        ' are \nhandpicked from your local farms',
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        fontSize: 12
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}

// ListTile(
// title: Text('Chicken Burger',
// style: TextStyle(
// fontWeight: FontWeight.bold,
// color: Colors.black
// ),
// ),
// leading: Column(
// children: [
// Container(
// width: 50.0,
// height: 50.0,
// alignment: Alignment.center,
// decoration: new BoxDecoration(
//
// image: DecorationImage(
// image: AssetImage('assets/burger1.jpg'),
// fit: BoxFit.fill
// ),
// ),
// ),
// ],
// ),
// subtitle: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Padding(
// padding: const EdgeInsets.only(top: 10,bottom: 10),
// child: Text('Rs.100',
// style: TextStyle(
// fontWeight: FontWeight.normal,
// color: Colors.black
// ),
// ),
// ),
// Text(
// 'A delicious burger made with the freshest of ingredients',
// ),
// ElevatedButton(onPressed: (){},
// child: Text('ADD'),
// )
// ],
// ),
// onTap: () {
//
// },
// ),