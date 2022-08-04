import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_search_ui/model/job.dart';
import 'package:job_search_ui/screen/job_details.dart';
import 'package:job_search_ui/screen/job_item.dart';

class JobList extends StatelessWidget {
  final joblist = Job.generatedJobList();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => JobDetails(joblist[index]));
              },
              child: JobItem(joblist[index]));
        },
        separatorBuilder: (_, index) => SizedBox(
          width: 20,
        ),
        itemCount: joblist.length,
      ),
    );
  }
}
