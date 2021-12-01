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

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

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
                      child: Text("Profile",
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 70.w,
                                  width: 70.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10000),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("assets/pics/dude.jpeg"),
                                    ),
                                  ),
                                ),
                                Container(
                                  height:  72,
                                  margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
Text(
                                          'Anthony Miguel',
                                          style: TextStyle(
                                            color: Color(0xffffffff).withOpacity(0.7),
                                            fontSize: 20
                                          ),
                                        ),
                                      Text(
                                          'Pronouns: He/Him',
                                          style: TextStyle(
                                            color: Color(0xffffffff).withOpacity(0.7),
                                            fontSize: 20
                                          ),
                                      ),
                                      Text(
                                          'Computer Science',
                                          style: TextStyle(
                                            color: Color(0xffffffff).withOpacity(0.7),
                                            fontSize: 20
                                          ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 20, 0, 5),
                              child: Text(
                                'Bio:',
                                style: TextStyle(
                                  color: Color(0xffffffff).withOpacity(0.7),
                                  fontSize: 20
                                ),
                              ),
                            ),
                            Container(
                              height: 250,
                              width: 370,
                              decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xFF1c2031)
                                  ),
                              margin: EdgeInsets.fromLTRB(0, 0, 30, 10),
                              child: Padding(
                                padding: const EdgeInsets.all(30),
                                child: Text(
                                  'Hey, my name is Anthony and Id love to connect with you! Some things about me are that I love cooking, dogs, and trying new things. Im a fourth year computer science so also if you need help with your courses, Id love to be your mentor.',
                                  style: TextStyle(
                                    color: Color(0xffffffff).withOpacity(0.7),
                                    fontSize: 18
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 370,
                              
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  
                                  
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Text(
                          'Edit Your Tags:',
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
                              text: "Cooking",
                              onPressed: (value) => print(value),
                            ),
                            CategoryBoxes(
                              text: "3rd Year",
                              onPressed: (value) => print(value),
                            ),
                          ],
                        ),
                      ),
                       Container(
                         margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        height: 50.h,
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(
                              width: 28.w,
                            ),
                            CategoryBoxes(
                              text: "Video Games",
                              onPressed: (value) => print(value),
                            ),
                            CategoryBoxes(
                              text: "Studying",
                              onPressed: (value) => print(value),
                            ),
                            CategoryBoxes(
                              text: "Family",
                              onPressed: (value) => print(value),
                            ),
                            CategoryBoxes(
                              text: "Friends",
                              onPressed: (value) => print(value),
                            ),
                          ],
                        ),
                      ),
                      Container(
                         margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        height: 50.h,
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(
                              width: 28.w,
                            ),
                            CategoryBoxes(
                              text: "Music",
                              onPressed: (value) => print(value),
                            ),
                            CategoryBoxes(
                              text: "Movies",
                              onPressed: (value) => print(value),
                            ),
                            CategoryBoxes(
                              text: "He/Him",
                              onPressed: (value) => print(value),
                            ),
                            CategoryBoxes(
                              text: "3rd Year",
                              onPressed: (value) => print(value),
                            ),
                          ],
                        ),
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
