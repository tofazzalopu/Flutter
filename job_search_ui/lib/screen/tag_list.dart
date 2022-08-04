import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TagList extends StatefulWidget {
  const TagList({Key? key}) : super(key: key);

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final _tagList = [" All ", "⚡  Popular", "⭐  Featured", "🔥  Sale"];
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.04,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _tagList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selected = index;
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(width: 2, color: Colors.greenAccent),
                color:
                    selected == index ? Colors.lightGreen : Colors.transparent,
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                child: Text(
                  _tagList[index],
                  style: TextStyle(
                      color: selected == index ? Colors.white : Colors.black),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (_, index) => SizedBox(
          width: 10,
        ),
      ),
    );
  }
}
