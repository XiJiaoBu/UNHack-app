import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:meditation/detail_page.dart';
import 'package:meditation/events.dart';
import 'package:meditation/job.dart';
import 'package:meditation/protege.dart';
import 'package:meditation/widgets/category_boxes.dart';
import 'package:meditation/icons.dart';
import 'package:meditation/widgets/discover_card.dart';
import 'package:meditation/widgets/discover_small_card.dart';
import 'package:meditation/widgets/svg_asset.dart';



class OpportunityPage extends StatelessWidget {
  const OpportunityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121421),
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 28.w,
                right: 18.w,
                top: 36.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                    child: Center(
                      child: Text("Opportunties",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 34.w,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
            
            // Container(
            //   height: 120.h,
            //   child: ListView(
            //     physics: BouncingScrollPhysics(),
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       SizedBox(
            //         width: 28.w,
            //       ),
            //       CategoryBoxes(
            //         text: "Insomnia",
            //         onPressed: (value) => print(value),
            //       ),
            //       CategoryBoxes(
            //         text: "Depression",
            //         onPressed: (value) => print(value),
            //       ),
            //       CategoryBoxes(
            //         text: "Baby Sleep",
            //         onPressed: (value) => print(value),
            //       ),
            //       CategoryBoxes(
            //         text: "Insomnia",
            //         onPressed: (value) => print(value),
            //       ),
            //     ],
            //   ),
            // ),

            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: SizedBox(
                height: 700.w,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 25),
                      child: DiscoverCard(
                        tag: "Job Listings",
                        onTap: () { _toJOB(context);
                        },
                        title: "Job Listings",
                        subtitle: "Browse countless opportunities handpicked just for you. ",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 25),
                      child: DiscoverCard(
                        tag: "York Events",
                        onTap: () { _toEvent(context);
                        },
                        title: "York Events",
                        subtitle: "Take advantage of amazing                events hosted by York.",
                        gradientStartColor: Color(0xffFC67A7),
                        gradientEndColor: Color(0xffF6815B),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                      child: DiscoverCard(
                        tag: "Mentorship Program",
                        onTap: () { _toMentor(context);
                        },
                        title: "Mentorship Program",
                        subtitle: "Find proteges looking                         for mentors.",
                        gradientStartColor: Colors.green[500],
                        gradientEndColor: Colors.green[300],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
    
  }
  void _toJOB(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Job()));
  }

  void _toEvent(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Events()));
  }

  void _toMentor(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Protege()));
  }
}
