import 'package:flutter/material.dart';
import 'mysql.dart';
import 'ordermodel.dart';

//Mysql DataBase에 직접연결
class OrderPage1 extends StatefulWidget {
  const OrderPage1({super.key});

  @override
  State<OrderPage1> createState() => _OrderPage1State();
}

Future<List<OrderModel>> getMySqlData() async{
  var db = Mysql();
  String sql='SELECT id,name,price FROM menu;';
  final List<OrderModel> mylist =[];
  await db.getConnection().then((conn) async {
    await conn.query(sql).then((results) {
      for (var res in results){
        //mylist.add(res['id']);
        //mylist.add(res['name']);
        //mylist.add(res['price']);
        final OrderModel myorder = OrderModel(id: res['id'].toString(), name: res['name'].toString(), price: res['price'].toString());
        mylist.add(myorder);
      }
    }).onError((error,stackTrace){
      print(error);
      return null;
    });
    conn.close();
  });
  return mylist;
}

class _OrderPage1State extends State<OrderPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: showFutureDBData(),
      ),
    );
  }
}

showFutureDBData() {
  return FutureBuilder<List<OrderModel>>(
    future: getMySqlData(),
    builder: (BuildContext context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const CircularProgressIndicator();
      } else if (snapshot.hasError) {
        return Text(snapshot.error.toString());
      }
      return ListView.builder(
        itemCount: snapshot.data!.length,
        itemBuilder: (context, index) {
          final user = snapshot.data![index];
          return ListTile(
            leading: Text(user.id),
            title: Text(user.name),
            subtitle: Text(user.price),
          );
        },
      );
    },
  );
}