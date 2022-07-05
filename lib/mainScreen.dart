import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:news_model/Faorite.dart';
import 'package:news_model/HomePage.dart';
import 'package:news_model/NewsWidget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(physics: ScrollPhysics(), tabs: [
            Tab(child: Text("All")),
            Tab(child: Text("Favorite")),
          ]),
        ),
        body: TabBarView(children: [HomePage(), Favorite()]),
      ),
    );
  }
}
