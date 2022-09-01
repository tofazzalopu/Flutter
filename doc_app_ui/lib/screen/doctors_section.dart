import 'package:doc_app_ui/widgets/colors_package.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DoctorsSection extends StatefulWidget {
  const DoctorsSection({Key? key}) : super(key: key);

  @override
  State<DoctorsSection> createState() => _DoctorsSectionState();
}

class _DoctorsSectionState extends State<DoctorsSection> {
  List departments = [
    "All",
    "Cardiology",
    "Oncology",
    "Neurology",
    "Hematology",
    "Orthology",
  ];
  var isClicked = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: departments.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                isClicked = index;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  width: 1,
                  color: isClicked == index ? Colors.transparent : bordercolor,
                ),
                color:
                    isClicked == index ? selection_color : Colors.transparent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${departments[index]}',
                    style: TextStyle(
                      color: isClicked == index ? Colors.white : bordercolor,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          width: 12,
        ),
      ),
    );
  }
}
