import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'Modlel/NewsModel.dart';

class NewsWidget extends StatefulWidget {
  NewsModel? news;
  NewsWidget(this.news);

  @override
  State<NewsWidget> createState() => _NewsWidgetState(news);
}

class _NewsWidgetState extends State<NewsWidget> {
  NewsModel? news;
  _NewsWidgetState(this.news);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                height: 100,
                width: 100,
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: news?.urlImage ?? '',
                  errorWidget: (x, y, z) {
                    return Icon(Icons.error_outline_rounded);
                  },
                ),
              ),
              Expanded(
                // width: MediaQuery.of(context).size.width - 10,
                child: Column(
                  children: [
                    Text(
                      news?.title ?? 'NO title',
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                    ),
                    Divider(),
                    Text(
                      overflow: TextOverflow.fade,
                      news?.description ?? 'NO description',
                      maxLines: 2,
                    ),
                    Divider(),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            news?.author ?? 'NOT defined',
                            maxLines: 1,
                            overflow: TextOverflow.fade,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            news!.islike = !news!.islike;
                            setState(() {});
                          },
                          icon: Icon(Icons.favorite),
                          color: news!.islike ? Colors.red : Colors.grey,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Divider(
          thickness: 4,
          color: Colors.black,
        )
      ],
    );
  }
}
