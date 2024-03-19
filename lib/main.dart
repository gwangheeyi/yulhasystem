import 'package:flutter/material.dart';
import 'package:yulhasystem/snackpage.dart';
import 'requestpage.dart';
import 'holeinonepage.dart';
import 'infopage.dart';
//import 'package:flutter_cart/flutter_cart.dart';
import 'orderpage1.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:TabScreen(),
      ),
  );
}

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> with SingleTickerProviderStateMixin{

  late TabController tabController = TabController(
      length: 5,
      vsync: this,
      initialIndex: 0,
      //탭 변경 애니메이션 시간
      animationDuration: const Duration(microseconds: 100),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight:0,
        backgroundColor: Colors.black12,
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(icon:Icon(Icons.coffee),text:"음료주문"),
            Tab(icon:Icon(Icons.fastfood),text:"스낵 안주주문"),
            Tab(icon:Icon(Icons.sports_golf_sharp),text:"게임문의"),
            Tab(icon:Icon(Icons.golf_course),text: "홀인원 기록"),
            Tab(icon:Icon(Icons.notifications),text:"공지사항")
          ],
          labelColor: Colors.white,
          labelStyle: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            //backgroundColor: Colors.blue,
          ),
          indicatorWeight: 5,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Colors.blue,
          indicator: BoxDecoration(
              color: Colors.red.shade900,
              borderRadius: const BorderRadius.all(Radius.circular(10))
          ),
        ),
      ),
      body:
        TabBarView(
        controller: tabController,
        children: const [
          //OrderPage(),
          OrderPage1(),
          SnackPage(),
          RequestPage(),
          HoleInOnePage(),
          InfoPage()
        ],
      ),
    );
  }
}
