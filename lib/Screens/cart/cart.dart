import 'package:app_prakyath/Components/cart_item.dart';
import 'package:app_prakyath/Screens/homepage.dart';
import 'package:app_prakyath/Services/cart.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children:[
          Container(
            height: MediaQuery. of(context). size. height/1.6,
            child:ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: arr.length,
                itemBuilder: (BuildContext context,int index){
                  return CartItem(name: arr[0][0],pic: arr[0][1],price: arr[0][2],desc: arr[0][3],);
                }
                // children: [
                //   CartItem(),
                //   CartItem(),
                //   CartItem(),
                //   CartItem(),
                // ]
            ),
          ),
          Container(
            height: MediaQuery. of(context). size. height/0.3,
            // color: Colors.black12,
            padding: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
              // border: Border.all(color: Colors.black)
            ),
            child: ListView(

              children:[
                Center(child: Text('Total: \$ 23.92',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                // side: BorderSide(color: Colors.red)
                              ),)
                        ),
                        child: Text(
                          'Proceed to Checkout',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        onPressed: (){

                        }
                    ),
                  ),
                ),
            ],
            ),
          ),

        ],
      ),
    );
  }
}
