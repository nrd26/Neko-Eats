// ignore_for_file: unnecessary_const

import 'package:app_prakyath/Components/counter.dart';
import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  var name;
  var pic;
  var price;
  var quantity;
  CartItem({required this.name, required this.pic, required this.price, required this.quantity});

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int quantity = 1;
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
          subtitle: Counter(quantity: widget.quantity,),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: const Image(image: AssetImage('assets/burger1.jpg'),
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
