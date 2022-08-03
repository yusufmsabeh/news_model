import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:news_model/ContactUsScreen.dart';
import 'package:news_model/Faorite.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Modlel/NewsModel.dart';

class NewsWidget extends StatelessWidget {
  NewsModel? news;
  Function Refresh;
  int PhoneNumber = 12;
  NewsWidget(this.news, this.Refresh);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ContactUsScreen()));
      },
      child: Column(
        children: [
          Row(
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
                    Text(news?.title ?? 'NO title',
                        maxLines: 1, overflow: TextOverflow.fade),
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

                            Refresh();
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
          Divider(
            thickness: 4,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
