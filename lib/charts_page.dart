import 'package:flutter/material.dart';
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
const kPrimaryColor = Color(0xFF96c2cf);
const kTextColor = Color(0xFF4F6367);
const kBackgroundColor = Color(0xFFF2F2F2);
const kRedColor = Color(0xFFEE7B72);
const kPurpleColor = Color(0xFF97A8E8);
const kGreyColor = Color(0xFFC4C4C4);
const kLimeColor = Color(0xFFBFF0B7);
const kResourcesColor = Color(0xFF3E4ED9);
const kBlendColor = Color(0xFFBFCDFF);
const kCalendarColor = Color(0xFF97A8E8);

class ChartsPage extends StatelessWidget {
  const ChartsPage({Key? key}) : super(key: key);

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
                      child: Text("Connect",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 34.w,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: SizedBox(
                    height: 1000.w,
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 270.w,
                              width: 320.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/pics/jason.png"),
                                ),
                              ),
                            ),
                            Container(
                              width: 370,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 10 , 0, 0),
                                    child: Text(
                                      'Jason Lecce (He/Him)',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25
                                      ),
                                    )
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 3, 180, 03),
                                    child: Text(
                                      'Computer Science',
                                      style: TextStyle(
                                        color: Color(0xffffffff).withOpacity(0.7),
                                        fontSize: 20
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0 , 0, 0),
                                    child: Text(
                                      'Hey guys! My name is Jason and Im a 3rd year student. I love travelling, wine, and basketball. Connect with me!',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20
                                      ),
                                    )
                                  ),
                                  
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Text(
                          'What connected you two!',
                            style: TextStyle(
                              color: Color(0xffffffff).withOpacity(0.7),
                              fontSize: 20
                          )
                        ),
                      ),
                      Container(
                        height: 50.h,
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(
                              width: 28.w,
                            ),
                            CategoryBoxes(
                              text: "Basketball",
                              onPressed: (value) => print(value),
                            ),
                            CategoryBoxes(
                              text: "Computer Science",
                              onPressed: (value) => print(value),
                            ),
                            CategoryBoxes(
                              text: "Travelling",
                              onPressed: (value) => print(value),
                            ),
                            CategoryBoxes(
                              text: "3rd Year",
                              onPressed: (value) => print(value),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
                        child: Container(
                          decoration: BoxDecoration(
                        border:
                            Border.all(width: 1, color: Colors.transparent),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(18)),
                        color: kRedColor,
                        ),
                          height: 60,
                          child: 
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                              Text(
                                'Connect with another student',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: RotatedBox(
                                quarterTurns: 4,
                                child: IconButton(
                                  icon: Icon(
                                    Icons.replay_outlined,
                                    color: kBackgroundColor,
                                    size: 30,
                                  ),
                                  onPressed: null,
                                ),
                              ),
                              ),
                            ],),
                          ),
                        )
                      ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
