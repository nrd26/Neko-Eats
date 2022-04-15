import 'package:app_prakyath/Components/counter.dart';
import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  const CartItem({Key? key}) : super(key: key);

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  double price = 2.99;
  int quantity = 2;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(30))
      ),
      child: ListTile(
        contentPadding: EdgeInsets.fromLTRB(10, 10, 20, 10),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text('Chicken Burger',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),),
        ),
        subtitle: Counter(),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(image: AssetImage('assets/burger1.jpg'),
            height: 90,
            width: 90,),
        ),
        trailing: Text('\$${price*quantity}',
          style: TextStyle(
            fontSize: 16
          ),
        ),
      ),
    );
  }
}
