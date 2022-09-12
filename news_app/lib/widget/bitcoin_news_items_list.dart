import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:news_app/Model/news_model.dart';
import 'package:news_app/const/const.dart';
import 'package:news_app/screen/news_details.dart';

class ArticlesNewsList extends StatelessWidget {
  ArticlesNewsList({Key? key, this.articlenews}) : super(key: key);
  Articles? articlenews;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, NewsDetails.routeName,
              arguments: articlenews!.publishedAt);
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    spreadRadius: .4,
                    blurRadius: 8,
                    color: Colors.blueGrey,
                    offset: Offset(4, 5))
              ]),
          height: 120,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(14),
                child: Row(
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: NetworkImage('${articlenews!.urlToImage}'),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${articlenews!.title}',
                            maxLines: 2,
                            style: myfonts(Colors.black, 14, FontWeight.bold),
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Text('${articlenews!.url}');
                                  },
                                  icon: Icon(
                                    Icons.link,
                                    color: Colors.lightBlueAccent,
                                  )),
                              SizedBox(
                                width: 5,
                              ),
                              Text('${articlenews!.publishedAt}')
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: 0,
                  bottom: 60,
                  child: Container(
                    height: 60,
                    width: 10,
                    color: Colors.blueGrey,
                  )),
              Positioned(
                  bottom: 0,
                  left: 400,
                  right: 0,
                  child: Container(
                    height: 10,
                    width: 60,
                    color: Colors.blueGrey,
                  )),
              Positioned(
                  right: 400,
                  top: 0,
                  left: 0,
                  child: Container(
                    height: 10,
                    width: 60,
                    color: Colors.blueGrey,
                  )),
              Positioned(
                  top: 60,
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 60,
                    width: 10,
                    color: Colors.blueGrey,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
