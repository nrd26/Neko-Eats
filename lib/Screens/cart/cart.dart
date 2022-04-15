import 'package:app_prakyath/Components/cart_item.dart';
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
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
            child: Container(
              height: MediaQuery. of(context). size. height/1.7,
              child:ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    CartItem(),
                    SizedBox(height: 15,),
                    CartItem(),
                    SizedBox(height: 15,),
                    CartItem(),
                    SizedBox(height: 15,),
                    CartItem(),
                  ]
              ),
            ),
          ),
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
    );
  }
}
