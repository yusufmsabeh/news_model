import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:news_model/Modlel/dummy_data.dart';
import 'package:news_model/NewsWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: news.length,
          itemBuilder: ((context, index) => NewsWidget(news[index]))),
    );
  }
}
