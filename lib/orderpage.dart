import 'package:flutter/material.dart';
class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            //주문판
            Flexible(
                child:Container(
                  color: Colors.blue,
                ),
                flex: 3),
            //메뉴판
            Flexible(
                child:Container(
                  child:Column(
                    children: [Text('아이스커피',style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold)),Text('0원')],
                  )
                ),
                flex: 7),
          ],
        ),
      ),
    );
  }
}
