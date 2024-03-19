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
                flex: 3,
                child:Container(
                  color: Colors.blue,
                )),
            //메뉴판
            Flexible(
                flex: 7,
                child:Container(
                  child:Column(
                    children:[
                    const Row(
                    children: [Text('아이스커피',style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold)),
                      Text('   0원', style: TextStyle(fontSize:30,fontWeight: FontWeight.bold,color: Colors.red))]
                    ),
                    Row(
                      children: [
                        ElevatedButton(onPressed: (){}, style:ElevatedButton.styleFrom(backgroundColor: Colors.blue),child: const Text('+',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30))),
                        ElevatedButton(onPressed: (){}, style:ElevatedButton.styleFrom(backgroundColor: Colors.blue),child: const Text('-',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30))),
                      ],
                    )],
                  )
                )),
          ],
        ),
      ),
    );
  }
}
