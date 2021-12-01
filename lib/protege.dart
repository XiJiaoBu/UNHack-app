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


class Protege extends StatefulWidget {
  const Protege({ Key? key }) : super(key: key);

  @override
  _ProtegeState createState() => _ProtegeState();
}

class _ProtegeState extends State<Protege> {
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
                    'Protege Profiles',
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
                    "In your field",
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
                                image: AssetImage("assets/pics/josh.jpeg"),
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
                                    'Josh Chang',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25
                                    ),
                                  )
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 180, 20),
                                  child: Text(
                                    'Schulich',
                                    style: TextStyle(
                                      color: Color(0xffffffff).withOpacity(0.7),
                                      fontSize: 20
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0 , 0, 0),
                                  child: Text(
                                    'Hey everyone! Im a first year schulich business student. Id love to connect with you and chat. I love to learn and having a mentor would be awesome!',
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
                              'Connect',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(196, 0, 0, 0),
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
                                image: AssetImage("assets/pics/miguel.jpg"),
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
                                    'Miguel Cortez',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25
                                    ),
                                  )
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 180, 20),
                                  child: Text(
                                    'Music',
                                    style: TextStyle(
                                      color: Color(0xffffffff).withOpacity(0.7),
                                      fontSize: 20
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0 , 0, 0),
                                  child: Text(
                                    'Hi! My name is miguel and I am specializing in music. Looking for a saxophone mentor!',
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
                              'Connect',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(196, 0, 0, 0),
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
                      SizedBox(width: 30,)
              ])
          )])])));
  }
}