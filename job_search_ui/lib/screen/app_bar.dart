import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text("Welcome Home", style: TextStyle(fontSize: 14)),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 18.0,
              bottom: 8,
            ),
            child: Text(
              "Annie Bryant",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ),
        ]),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 20),
                        transform: Matrix4.rotationZ(100),
                        child: Icon(Icons.notifications_none_outlined)),
                    Positioned(
                      top: -12,
                      right: 16,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(3),
                      ),
                    ),
                  ],
                ),
                ClipOval(
                  child: Image.asset(
                    "assets/images/avatar.png",
                    width: 50,
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
