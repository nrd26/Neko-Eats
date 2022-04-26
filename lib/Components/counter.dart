import 'package:app_prakyath/Screens/homepage.dart';
import 'package:app_prakyath/Services/cart.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  var index;
  Counter({required this.index});
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  // int n = 1;
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
      if ( cart[widget.index][5]!= 0) {
        cart[widget.index][5]--;
      }
      else if( cart[widget.index][5] == 0){
        cart.removeAt(widget.index);
      }
      total = total - cart[widget.index][2];
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
                child: Text('${cart[widget.index][5]}',
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
