import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:meditation/detail_page.dart';
import 'package:meditation/widgets/category_boxes.dart';
import 'package:meditation/icons.dart';
import 'package:meditation/widgets/discover_card.dart';
import 'package:meditation/widgets/discover_small_card.dart';
import 'package:meditation/widgets/svg_asset.dart';
import 'package:intl/intl.dart';

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


const double kDefaultPadding = 30.0;
const double kAnnouncementPadding = 19;
const double kCalendarPadding = 5;

var time = DateTime.now();
int get_Weekday(){
return time.weekday;
}
int weekday = get_Weekday();

int get_Date(){
  return time.day;
}
int date = get_Date();


var monday = date - weekday +1;
  var tuesday = monday + 1;
  var wednesday = tuesday + 1;
  var thursday = wednesday + 1;
  var friday = thursday + 1;
  var saturday = friday+ 1;
  var sunday = saturday + 1;

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({
    Key? key,
  }) : super(key: key);

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
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
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Row(
                      children: [
                        Container(
                      height: 50.w,
                      width: 50.w,
                      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/pics/york.jpeg"),
                        ),
                      ),
                    ),
                        Center(
                          child: Text("YorkConnect",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 36.w,
                                  fontWeight: FontWeight.bold,
                                  )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
      Padding(
      padding: const EdgeInsets.fromLTRB(kDefaultPadding, 0, kDefaultPadding, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          Container(
            margin: EdgeInsets.fromLTRB(0, 0, kCalendarPadding, 0),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.transparent),
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              color: weekday == 1 ? kCalendarColor : Colors.transparent,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(6, 8, 6, 6),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                    child: Text(
                      'MO',
                      style: TextStyle(
                        color: weekday == 1 ? Colors.white : Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Text(
                    '${monday}',
                    style: TextStyle(
                      color: weekday == 1 ? Colors.white : Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
               ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, kCalendarPadding, 0),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.transparent),
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              color: weekday == 2 ? kCalendarColor : Colors.transparent,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(6, 8, 6, 6),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                    child: Text(
                      'TU',
                      style: TextStyle(
                        color: weekday == 2 ? Colors.white : Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Text(
                    '${tuesday}',
                    style: TextStyle(
                      color: weekday == 2 ? Colors.white: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
               ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, kCalendarPadding, 0),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.transparent),
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              color: weekday == 3 ? kCalendarColor : Colors.transparent,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(6, 8, 6, 6),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                    child: Text(
                      'WE',
                      style: TextStyle(
                        color: weekday == 3 ? Colors.white : Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Text(
                    '${wednesday}',
                    style: TextStyle(
                      color: weekday == 3 ? Colors.white : Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
               ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, kCalendarPadding, 0),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.transparent),
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              color: weekday == 4 ? kCalendarColor : Colors.transparent,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(6, 8, 6, 6),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                    child: Text(
                      'TH',
                      style: TextStyle(
                        color: weekday == 4 ? Colors.white : Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Text(
                    '${thursday}',
                    style: TextStyle(
                      color: weekday == 4 ? Colors.white : Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
               ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, kCalendarPadding, 0),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.transparent),
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              color: weekday == 5 ? kCalendarColor : Colors.transparent,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(6, 8, 6, 6),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                    child: Text(
                      'FR',
                      style: TextStyle(
                        color: weekday == 5 ? Colors.white: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Text(
                    '${friday}',
                    style: TextStyle(
                      color: weekday == 5 ? Colors.white : Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
               ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, kCalendarPadding, 0),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.transparent),
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              color: weekday == 6 ? kCalendarColor : Colors.transparent,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(6, 8, 6, 6),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                    child: Text(
                      'SA',
                      style: TextStyle(
                        color: weekday == 6 ? Colors.white : Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Text(
                    '${saturday}',
                    style: TextStyle(
                      color: weekday == 6 ? Colors.white : Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
               ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, kCalendarPadding, 0),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.transparent),
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              color: weekday == 7 ? kCalendarColor : Colors.transparent,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(6, 8, 6, 6),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                    child: Text(
                      'SU',
                      style: TextStyle(
                        color: weekday == 7 ? Colors.white : Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Text(
                    '${sunday}',
                    style: TextStyle(
                      color: weekday == 7 ? Colors.white : Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
               ),
            ),
          ),
        ],
      ),
    ),
            SizedBox(height: 16.h),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 28.w),
              child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 19.w, mainAxisExtent:  125.w, mainAxisSpacing: 19.w),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  DiscoverSmallCard(
                    onTap: (){},
                    title: "News",
                    gradientStartColor: Color(0xff13DEA0),
                    gradientEndColor: Color(0xff06B782),
                    icon: Icon(Icons.notification_add)
                  ),
                  DiscoverSmallCard(
                    onTap: (){},
                    title: "Upcoming Events",
                    gradientStartColor: Color(0xffFC67A7),
                    gradientEndColor: Color(0xffF6815B),
                    icon: Icon(Icons.people),
                  ),
                  DiscoverSmallCard(
                    onTap: (){},
                    title: "YorkConnect Webview",
                    gradientStartColor: Color(0xffFFD541),
                    gradientEndColor: Color(0xffF0B31A),
                    icon: Icon(Icons.now_widgets_outlined),
                  ),
                  DiscoverSmallCard(
                    onTap: (){},
                    title: "COVID-19",
                    icon:  Icon(Icons.medication_outlined),
                  )
                ],

              ),
            ),
            Padding(
                      padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
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
                              'Mentor Messages',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(123, 0, 0, 0),
                              child: RotatedBox(
                              quarterTurns: 2,
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color: kBackgroundColor
                                ),
                                onPressed: null,
                              ),
                            ),
                            ),
                          ],),
                        ),
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
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
                              'New Connections',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(125, 0, 0, 0),
                              child: RotatedBox(
                              quarterTurns: 2,
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color: kBackgroundColor
                                ),
                                onPressed: null,
                              ),
                            ),
                            ),
                          ],),
                        ),
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
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
                              'Course Portal',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(160, 0, 0, 0),
                              child: RotatedBox(
                              quarterTurns: 2,
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color: kBackgroundColor
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
        
      ),
      
    );
  }
}
