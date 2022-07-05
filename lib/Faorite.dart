import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:news_model/Modlel/dummy_data.dart';

import 'Modlel/NewsModel.dart';
import 'NewsWidget.dart';

class Favorite extends StatefulWidget {
  @override
  State<Favorite> createState() => FavoriteState();
}

class FavoriteState extends State<Favorite> {
  void Refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: news.where((element) => element.islike).length,
        itemBuilder: ((context, index) {
          return NewsWidget(
              news.where((element) => element.islike).toList()[index], Refresh);
        }));
  }
}
