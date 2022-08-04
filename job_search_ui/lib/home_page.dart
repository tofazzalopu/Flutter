import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_search_ui/screen/app_bar.dart';
import 'package:job_search_ui/screen/job_item.dart';
import 'package:job_search_ui/screen/job_list.dart';
import 'package:job_search_ui/screen/search_bar.dart';
import 'package:job_search_ui/screen/tag_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(flex: 4, child: Container()),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.grey.withOpacity(0.2),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                HomeAppBar(),
                SearchBar(),
                TagList(),
                JobList(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
