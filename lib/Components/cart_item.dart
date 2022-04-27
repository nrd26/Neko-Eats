// ignore_for_file: unnecessary_const

import 'package:app_prakyath/Components/counter.dart';
import 'package:app_prakyath/Screens/homepage.dart';
import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  var name;
  var pic;
  var price;
  var index;
  CartItem({required this.name, required this.pic, required this.price, required this.index});

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int quantity = 1;
  void add() {
    setState(() {
      // n++;
      cart[widget.index][5] += 1;
      total = total + cart[widget.index][2];
      print(cart[widget.index][5]);
      // lengthPlus();
    });
  }
  void minus() {
    setState(() {
      if ( cart[widget.index][5]>1) {
        cart[widget.index][5]--;
      }
      if( cart[widget.index][5] == 1){
        total = total - cart[widget.index][2];
        cart.removeAt(widget.index);
      }

    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 25),
      child: Container(
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
        child: ListTile(
          contentPadding: const EdgeInsets.fromLTRB(10, 15, 20, 15),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(widget.name.toString(),
            style: const TextStyle(
              fontWeight: FontWeight.bold
            ),),
          ),
          // subtitle: Container(
          //   padding: EdgeInsets.only(top: 10),
          //   child: Center(
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.start,
          //       children: <Widget>[
          //         Container(
          //           height: 25,
          //           width: 25,
          //           child: FloatingActionButton(
          //             mini: true,
          //             onPressed: add,
          //             child: const Icon(Icons.add, size:20,color: Colors.black,),
          //             backgroundColor: Colors.white,),
          //         ),
          //
          //         Padding(
          //           padding: const EdgeInsets.only(left: 15,right: 15),
          //           child: Text('${cart[widget.index][5]}',
          //               style: const TextStyle(fontSize: 18.0)),
          //         ),
          //         Container(
          //           height: 25,
          //           width: 25,
          //           child: FloatingActionButton(
          //             onPressed: minus,
          //             child: const Icon(Icons.remove, size:20,color: Colors.black,),
          //             backgroundColor: Colors.white,),
          //         ),
          //
          //       ],
          //     ),
          //   ),
          // ),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image(image: AssetImage(widget.pic),
              height: 90,
              width: 90,),
          ),
          trailing: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Rs.${widget.price.toString()}',
              style: const TextStyle(
                fontSize: 16
              ),
            ),
          ),
        ),
      ),
    );
  }
}
