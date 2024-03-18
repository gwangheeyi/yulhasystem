import 'package:flutter/material.dart';

//Widget
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
                    children:[
                    Row(
                    children: [Text('아이스커피',style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold)),
                      Text('   0원', style: TextStyle(fontSize:30,fontWeight: FontWeight.bold,color: Colors.red))]
                    ),
                    Row(
                      children: [
                        ElevatedButton(onPressed: (){}, style:ElevatedButton.styleFrom(backgroundColor: Colors.blue),child: Text('+',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30))),
                        ElevatedButton(onPressed: (){}, style:ElevatedButton.styleFrom(backgroundColor: Colors.blue),child: Text('-',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30))),
                      ],
                    )],
                  )
                ),
                flex: 7),
          ],
        ),
      ),
    );
  }
}
