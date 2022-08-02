import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel/model/travel.dart';

class DialogDemo extends StatefulWidget {
  final dialogDemo = Travel.generatedTravelList();

  @override
  State<DialogDemo> createState() => _DialogDemoState();
}

class _DialogDemoState extends State<DialogDemo> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (
              context,
            ) {
              var modalpage = widget.dialogDemo;
              return Dialog(
                backgroundColor: Colors.transparent,
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(""),
                      )
                    ],
                  ),
                ),
              );
            });
      },
      child: Container(
        margin: EdgeInsets.all(14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.deepOrange,
        ),
        child: Center(
            child: Text(
          "Visit Now",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 14),
        )),
      ),
    );
  }
}
