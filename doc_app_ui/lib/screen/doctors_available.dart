import 'package:doc_app_ui/screen/consultation_formate_page.dart';
import 'package:doc_app_ui/widgets/colors_package.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../data/data_model.dart';

class AvailableDoctors extends StatefulWidget {
  const AvailableDoctors({Key? key}) : super(key: key);

  @override
  State<AvailableDoctors> createState() => _AvailableDoctorsState();
}

class _AvailableDoctorsState extends State<AvailableDoctors> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: doctorlist.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(14),
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 7.0,
                      spreadRadius: 5,
                      offset: Offset(0, 5),
                      color: Colors.grey.withOpacity(0.2))
                ]),
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 140,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "${doctorlist[index].imageurl}"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${doctorlist[index].name}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                '${doctorlist[index].occupation}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    doctorlist[index].icon_star,
                                    color: Colors.yellow,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    '${doctorlist[index].rating}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Fee Starts\nfrom"),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Text(
                                "${doctorlist[index].fee}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                  color: textcolor,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ConsultDoctor()));
                          },
                          child: Container(
                            margin: EdgeInsets.all(18),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: button_color,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Connect",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          height: 30,
        ),
      ),
    );
  }
}
