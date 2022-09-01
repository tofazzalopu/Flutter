import 'package:doc_app_ui/screen/doctors_available.dart';
import 'package:doc_app_ui/screen/doctors_section.dart';
import 'package:doc_app_ui/screen/home_page.dart';
import 'package:doc_app_ui/widgets/colors_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DoctorsPage extends StatefulWidget {
  const DoctorsPage({Key? key}) : super(key: key);

  @override
  State<DoctorsPage> createState() => _DoctorsPageState();
}

class _DoctorsPageState extends State<DoctorsPage> {
  bool? active_button = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: background_color,
          leading: InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: ((context) => HomePage())));
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
          title: Text(
            'Doctors',
            style: TextStyle(fontWeight: FontWeight.bold, color: textcolor),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                padding: EdgeInsets.all(6),
                height: 30,
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.search,
                  size: 18,
                  color: bordercolor,
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: button_color,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                active_button = true;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: active_button == true
                                    ? Colors.white
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              height: 40,
                              child: Center(
                                child: Text(
                                  "Online",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: active_button == true
                                        ? textcolor
                                        : Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                active_button = false;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: active_button == true
                                    ? Colors.transparent
                                    : Colors.white,
                              ),
                              height: 40,
                              child: Center(
                                child: Text(
                                  "Visit",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: active_button == true
                                        ? Colors.white
                                        : textcolor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Let's find your Doctor",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                DoctorsSection(),
                SizedBox(
                  height: 30,
                ),
                AvailableDoctors(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
