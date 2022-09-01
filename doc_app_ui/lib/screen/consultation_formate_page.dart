import 'package:doc_app_ui/screen/doctors_page.dart';
import 'package:doc_app_ui/widgets/colors_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ConsultDoctor extends StatelessWidget {
  const ConsultDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => DoctorsPage()));
          },
          child: Container(
            margin: EdgeInsets.all(12),
            height: 40,
            width: 20,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              Icons.keyboard_arrow_left,
              color: bordercolor,
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Choose",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gilroy-Regular'),
            ),
            Text(
              "Consultation",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gilroy-Regular'),
            ),
            Text(
              "Format",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gilroy-Regular'),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 7,
                      spreadRadius: 5,
                      offset: Offset(0, 5),
                      color: Colors.grey.withOpacity(0.2)),
                ],
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 60,
                        decoration: BoxDecoration(
                          color: selection_color,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Icon(
                          Icons.chat_bubble_outline_rounded,
                          color: Colors.white,
                        ),
                      )),
                  Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Start',
                            style: myfonts(textcolor, 14, FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Conversation',
                            style: myfonts(textcolor, 14, FontWeight.bold),
                          ),
                        ],
                      )),
                  Expanded(
                      flex: 2,
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 7,
                        spreadRadius: 5,
                        offset: Offset(0, 5),
                        color: Colors.grey.withOpacity(0.2)),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 60,
                        decoration: BoxDecoration(
                          color: button_color,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Icon(
                          Icons.video_call_rounded,
                          color: Colors.white,
                        ),
                      )),
                  Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Join',
                            style: myfonts(textcolor, 14, FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'live video call',
                            style: myfonts(textcolor, 14, FontWeight.bold),
                          ),
                        ],
                      )),
                  Expanded(
                      flex: 2,
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
