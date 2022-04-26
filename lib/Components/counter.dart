import 'package:app_prakyath/Services/cart.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  var quantity;
  Counter({required this.quantity});
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int n = 1;
  void add() {
    setState(() {
      n++;
      // lengthPlus();
    });
  }
  void minus() {
    setState(() {
      if (n != 0)
        // lengthMinus();
        n--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 25,
                width: 25,
                child: FloatingActionButton(
                  mini: true,
                  onPressed: add,
                  child: const Icon(Icons.add, size:20,color: Colors.black,),
                  backgroundColor: Colors.white,),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Text('$n',
                    style: const TextStyle(fontSize: 18.0)),
              ),
              Container(
                height: 25,
                width: 25,
                child: FloatingActionButton(
                  onPressed: minus,
                  child: const Icon(Icons.remove, size:20,color: Colors.black,),
                  backgroundColor: Colors.white,),
              ),

            ],
          ),
        ),
    );
  }
}
