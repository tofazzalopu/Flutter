import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:news_app/provider/news_provider.dart';
import 'package:provider/provider.dart';

class NewsDetails extends StatelessWidget {
  const NewsDetails({Key? key}) : super(key: key);
  static String routeName = 'newsDetails';

  @override
  Widget build(BuildContext context) {
    var publishAt = ModalRoute.of(context)!.settings.arguments as String;
    var currentData = Provider.of<NewsProvider>(context).findByDate;
    return Dialog(
      child: Container(
        child: Column(
          children: [
            Text('${currentData}'),
          ],
        ),
      ),
    );
  }
}
