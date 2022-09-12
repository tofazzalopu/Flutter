import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:news_app/Model/news_model.dart';
import 'package:news_app/Service/news_api.dart';
import 'package:news_app/const/const.dart';
import 'package:news_app/provider/news_provider.dart';
import 'package:news_app/widget/bitcoin_news_items_list.dart';
import 'package:news_app/widget/news_enum.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /*List<Articles> newsList = [];
  @override
  void didChangeDependencies() async {
    newsList = await NewsApiService().fetchNewsData();
    setState(() {});
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }*/

  String sortBy = NewsEnum.popularity.name;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<NewsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          'News App',
          style: myfonts(Colors.black, 20, FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 4),
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      'All News',
                      style: myfonts(Colors.black, 16, FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              currentIndex = currentIndex - 1;
                            });
                          },
                          child: Text('Prev')),
                      ListView.separated(
                        itemCount: 09,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return MaterialButton(
                            onPressed: () {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                            color: currentIndex == index
                                ? Colors.blue
                                : Colors.white,
                            minWidth: 20,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                            child: Text(
                              "${index + 1}",
                              style: TextStyle(
                                  color: currentIndex == index
                                      ? Colors.white
                                      : Colors.blue),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                          width: 5,
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              currentIndex = currentIndex + 1;
                            });
                          },
                          child: Text('Next')),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: DropdownButton<String>(
                      value: sortBy,
                      items: [
                        DropdownMenuItem(
                          child: Text("${NewsEnum.popularity.name}"),
                          value: NewsEnum.popularity.name,
                        ),
                        DropdownMenuItem(
                          child: Text("${NewsEnum.publishedAt.name}"),
                          value: NewsEnum.publishedAt.name,
                        ),
                        DropdownMenuItem(
                          child: Text("${NewsEnum.relevancy.name}"),
                          value: NewsEnum.relevancy.name,
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          sortBy = value!;
                        });
                      }),
                ),
                SizedBox(
                  height: 10,
                ),
                FutureBuilder<List<Articles>>(
                    future: providerData.getNewsData(
                        page: currentIndex + 1, sortBy: sortBy),
                    /*future: NewsApiService.fetchNewsData(
                        page: currentIndex + 1, sortBy: sortBy),*/
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(child: CircularProgressIndicator());
                      } else if (snapshot.hasError) {
                        return Container(
                          child: Text('Something is Wrong here'),
                        );
                      }
                      return ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return ArticlesNewsList(
                            articlenews: snapshot.data![index],
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                          height: 8,
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
