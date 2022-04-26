import 'package:app_prakyath/Components/bottomnavbar.dart';
import 'package:app_prakyath/Screens/cart/cart.dart';
import 'package:app_prakyath/Screens/homepage.dart';
import 'package:app_prakyath/Services/cart.dart';
import 'package:flutter/material.dart';

class FoodItem extends StatefulWidget {
  var name;
  var pic;
  var price;
  var desc;
  var index;
  FoodItem({required this.name, required this.pic, required this.price, required this.desc, required this.index});

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
          padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(
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
                    child: Image(image: AssetImage(widget.pic),
                      height: 90,
                      width: 90,),
                  ),
                  TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.red),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side: const BorderSide(color: Colors.red)
                              )
                          )
                      ),
                      child: const Text(
                        '    Add +    ',
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                      onPressed: (){
                        setState(() {
                          lengthPlus();
                          total = total+arr[widget.index][2];
                          cart.add(arr[widget.index]);
                        });

                      }
                  ),

              ],
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.name.toString(),
                    style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                      fontSize: 20
                    ),),
                    const SizedBox(height: 10,),
                    Text('Rs.${widget.price.toString()}',
                      style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black
                      ),),
                    const SizedBox(height: 10,),
                    Text(widget.desc.toString(),
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