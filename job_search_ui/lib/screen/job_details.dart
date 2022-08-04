import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_search_ui/model/job.dart';

class JobDetails extends StatelessWidget {
  Job _job;
  JobDetails(this._job);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 20),
              child: Container(
                height: 6,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.grey.withOpacity(0.2),
                ),
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.green.withOpacity(0.2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset(_job.logoUrl),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      _job.company,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.bookmark_outline_outlined),
                ),
                Icon(
                  Icons.more_horiz,
                  color: Colors.deepOrange,
                ),
              ]),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
            child: Text(
              "Product Design",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(children: [
                  Icon(Icons.location_on_outlined, color: Colors.orange),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(_job.location),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(
                      Icons.timer,
                      color: Colors.orange,
                    ),
                  ),
                  Text("Full Time"),
                ]),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
              'Requirements',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ..._job.req
              .map((e) => Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black,
                            ),
                          ),
                          ConstrainedBox(
                            constraints: BoxConstraints(maxWidth: 300),
                            child: Text(e),
                          )
                        ],
                      ),
                    ),
                  ))
              .toList(),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextButton(
              onPressed: () {},
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Center(
                  child: Text(
                    "Apply Now",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
