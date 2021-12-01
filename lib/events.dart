import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:meditation/icons.dart';
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

class Events extends StatefulWidget {
  const Events({ Key? key }) : super(key: key);

  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121421),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 350, 0),
                  child: InkWell(
                    onTap: () {
                        Navigator.of(context).pop();
                      },
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                      onPressed:  () {
                        Navigator.of(context).pop();
                      }
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(28, 10, 0, 0),
                  child: Text(
                    'York Events',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.w),
                  child: Text(
                    "Recommended",
                    style: TextStyle(
                        color: Color(0xffffffff).withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 16.w),
                  ),
                ),
                SizedBox(height: 15.h),
                SizedBox(
                  height: 1000.w,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 32.w),
                      Column(
                        children: [
                          Container(
                            height: 330.w,
                            width: 330.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/pics/conference.jpeg"),
                              ),
                            ),
                          ),
                          Container(
                            width: 370,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 20 , 0, 0),
                                  child: Text(
                                    'Canadian Conference on Global Health',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25
                                    ),
                                  )
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 180, 20),
                                  child: Text(
                                    'June 23, 2021',
                                    style: TextStyle(
                                      color: Color(0xffffffff).withOpacity(0.7),
                                      fontSize: 20
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0 , 0, 0),
                                  child: Text(
                                    'In the global advance towards 2030, there is a sense of urgency to evaluate if partnerships in global health at home and abroad are sufficient in their present form to reach the United Nation’s Sustainable Development Goals (SDGs). The complexity of the SDGs and the current state of the planet requires a paradigm shift in the way we work together. Silos, one-directional knowledge flow, North-South or top-down approaches are no longer “fit for purpose” in partnerships and need to be reviewed in light of the values of compassion, equity, inclusion and respect.',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20
                                    ),
                                  )
                                ),
                                Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
                      child: Container(
                        decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: Colors.transparent),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(18)),
                      color: kRedColor,
                      ),
                        height: 50,
                        child: 
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            Text(
                              'Attend Here',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(191, 0, 0, 0),
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
                          )
                        ],
                      ),
                      SizedBox(width: 28.w),
                      Column(
                        children: [
                          Container(
                            height: 330.w,
                            width: 330.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/pics/stem.jpeg"),
                              ),
                            ),
                          ),
                          Container(
                            width: 370,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 20 , 0, 0),
                                  child: Text(
                                    'Panel and Networking Event for Racialized Women in Engineering',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25
                                    ),
                                  )
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 180, 20),
                                  child: Text(
                                    'October 3, 2021',
                                    style: TextStyle(
                                      color: Color(0xffffffff).withOpacity(0.7),
                                      fontSize: 20
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0 , 0, 0),
                                  child: Text(
                                    'Looking to connect with other racialized women in engineering? Join us for this panel and networking event where you will have the opportunity to meet a panel of industry leaders and grow your community at FASE. ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20
                                    ),
                                  )
                                ),
                                Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
                      child: Container(
                        decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: Colors.transparent),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(18)),
                      color: kRedColor,
                      ),
                        height: 50,
                        child: 
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            Text(
                              'Attend Here',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(191, 0, 0, 0),
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
                          )
                        ],
                      ),
                      SizedBox(width: 28.w),
                      Column(
                        children: [
                          Container(
                            height: 330.w,
                            width: 330.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/pics/energy.jpeg"),
                              ),
                            ),
                          ),
                          Container(
                            width: 370,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 20 , 0, 0),
                                  child: Text(
                                    'Disruptors & Dilemmas: Net Zero – Not a Zero-Sum Game: Canada’s Opportunities in a Climate Positive Energy Transition:',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25
                                    ),
                                  )
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 180, 20),
                                  child: Text(
                                    'March 1, 2021',
                                    style: TextStyle(
                                      color: Color(0xffffffff).withOpacity(0.7),
                                      fontSize: 20
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0 , 0, 0),
                                  child: Text(
                                    'Creating a climate-positive future is a grand challenge of our time and one that is especially relevant to Canada as a major energy producer and exporter.',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20
                                    ),
                                  )
                                ),
                                Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
                      child: Container(
                        decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: Colors.transparent),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(18)),
                      color: kRedColor,
                      ),
                        height: 50,
                        child: 
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            Text(
                              'Attend Here',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(191, 0, 0, 0),
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
                          )
                        ],
                      ),
                      SizedBox(width: 28.w),
                      Column(
                        children: [
                          Container(
                            height: 330.w,
                            width: 330.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/pics/coffee.jpeg"),
                              ),
                            ),
                          ),
                          Container(
                            width: 370,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 20 , 0, 0),
                                  child: Text(
                                    'Virtual Coffee House - Building Faculty-Community Partnerships for Integrated Learning:',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25
                                    ),
                                  )
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 180, 20),
                                  child: Text(
                                    'January 1, 2021',
                                    style: TextStyle(
                                      color: Color(0xffffffff).withOpacity(0.7),
                                      fontSize: 20
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0 , 0, 0),
                                  child: Text(
                                    'You’re invited to join us on Zoom for informal drop-in sessions with Integrated Learning Experience (ILE) Coordinators and CTL Education Developer to chat about possible curricular experiential learning opportunities with community partners.',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20
                                    ),
                                  )
                                ),
                                Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
                      child: Container(
                        decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: Colors.transparent),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(18)),
                      color: kRedColor,
                      ),
                        height: 50,
                        child: 
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            Text(
                              'Attend Here',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(191, 0, 0, 0),
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
                          )
                        ],
                      ),
                      SizedBox(width: 35.w),
                    ]),
            )
          ],
        ),
          ])
      )
   );
  }
}