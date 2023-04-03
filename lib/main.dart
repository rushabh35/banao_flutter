import 'package:banao_flutter/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'app_style.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: kWhite,
          body : HomeScreen(),
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: kWhite,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: _selectedIndex == 0
                      ? SvgPicture.asset(
                    'assets/home.svg',
                    height: 20,
                    width: 20,
                  )
                      : SvgPicture.asset(
                    'assets/home_unselected.svg',
                    height: 20,
                    width: 20,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: _selectedIndex == 1
                      ? SvgPicture.asset(
                    'assets/learn.svg',
                    height: 20,
                    width: 20,
                  )
                      : SvgPicture.asset(
                    'assets/learn.svg',
                    height: 20,
                    width: 20,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: _selectedIndex == 2
                      ? SvgPicture.asset(
                    'assets/hub.svg',
                    height: 20,
                    width: 20,
                  )
                      : SvgPicture.asset(
                    'assets/hub.svg',
                    height: 20,
                    width: 20,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: _selectedIndex == 3
                      ? SvgPicture.asset(
                          'assets/chat.svg',
                          height: 20,
                          width: 20,
                        )
                      : SvgPicture.asset(
                          'assets/chat.svg',
                          height: 20,
                          width: 20,
                        ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: _selectedIndex == 3
                      ? SvgPicture.asset(
                    'assets/profile_unselected.svg',
                    height: 20,
                    width: 20,
                  )
                      : SvgPicture.asset(
                    'assets/profile_unselected.svg',
                    height: 20,
                    width: 20,
                  ),
                  label: '')
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        )
    );
  }
}




class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: ListView(
          children: [
             Container(
                color: khomeColor,
                height: 300,
                width: 250,
                padding: EdgeInsets.only(top: 15,),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          SvgPicture.asset(
                            'assets/back_arrow.svg',
                            height: 15,
                            width: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/notification.svg',
                                height: 20,
                                width: 20,
                              ),
                              SizedBox(
                                width:23,
                              ),
                              SvgPicture.asset(
                                'assets/bell.svg',
                                height: 20,
                                width: 20,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top:10,left:16),
                        child : Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Hello, Priya!',
                                    style: kPoppinsBold.copyWith(
                                      fontSize:20,
                                    )
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('What do you wanna learn today?',
                                    style: kPoppinsRegular.copyWith(
                                      fontSize:13,
                                    )
                                ),
                              ],
                            ),
                          ],
                        )
                    ),
                    Padding(
                        padding: EdgeInsets.all(16),
                        child : Column(
                          children: [
                            SizedBox(
                              height:10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    constraints: BoxConstraints(
                                    maxHeight: 42,
                                      maxWidth: 170
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          kBorderRadius,
                                        ),
                                        color: kBlue),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children:
                                          [
                                            SvgPicture.asset(
                                              'assets/program.svg',
                                              height: 20,
                                              width: 20,
                                            ),
                                            Text('Programs',
                                                style: kPoppinsMedium.copyWith(
                                                  color: khomeColor,
                                                  fontSize: 14
                                                )),
                                          ],
                                        ),
                                      ),
                                ),
                                Container(
                                  constraints: BoxConstraints(
                                      maxHeight: 42,
                                      maxWidth: 170
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        kBorderRadius,
                                      ),
                                      color: kBlue),
                                  child: Center(
                                child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:
                                  [
                                    SvgPicture.asset(
                                      'assets/gethelp.svg',
                                      height: 20,
                                      width: 20,
                                    ),
                                    Text('Get Help?',
                                        style: kPoppinsMedium.copyWith(
                                            color: khomeColor,
                                            fontSize: 14
                                        )),
                                  ],
                                ),
    ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height:20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  constraints: BoxConstraints(
                                      maxHeight: 42,
                                      maxWidth: 170
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        kBorderRadius,
                                      ),
                                      color: kBlue),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children:
                                      [
                                        SvgPicture.asset(
                                          'assets/learn.svg',
                                          height: 20,
                                          width: 20,
                                        ),
                                        Text('Learn',
                                            style: kPoppinsMedium.copyWith(
                                                color: khomeColor,
                                                fontSize: 14
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  constraints: BoxConstraints(
                                      maxHeight: 42,
                                      maxWidth: 170
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        kBorderRadius,
                                      ),
                                      color: kBlue),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children:
                                      [
                                        SvgPicture.asset(
                                          'assets/ddtracker.svg',
                                          height: 20,
                                          width: 20,
                                        ),
                                        Text('DD Tracker',
                                            style: kPoppinsMedium.copyWith(
                                                color: khomeColor,
                                                fontSize: 14
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                    )
                  ],
                )
            ),

            Padding(
              padding: const EdgeInsets.only(left:16.0,right:16,top:26,bottom:16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Programs for you',
                              style: kPoppinsSemiBold.copyWith(
                                fontSize:18,
                              )
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('View all',
                              style: kPoppinsRegular.copyWith(
                                fontSize:12,
                              )
                          ),
                          SizedBox(width:10),
                          SvgPicture.asset(
                            'assets/view_all.svg',
                            height: 12,
                            width: 13,
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height:25
                  ),
                  SizedBox(
                    height: 315,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.all(12),
                            margin: const EdgeInsets.only(right: 20.0),
                            height: 304,
                            width: 255,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(kBorderRadius),
                              color: kWhite,
                              boxShadow: [
                                BoxShadow(
                                  color: kDarkBlue.withOpacity(0.051),
                                  offset: const Offset(0.0, 3.0),
                                  blurRadius: 24.0,
                                  spreadRadius: 0.0,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 164,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(kBorderRadius),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/img_1.png',
                                        )
                                      )),
                                ),
                                const SizedBox(height: 18),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [

                                    Flexible(
                                      child: Text(
                                        'LIFESTYLE',
                                        style: kPoppinsSemiBold.copyWith(
                                          color:kBlue,
                                          fontSize: 16
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Flexible(
                                  child: Text(
                                    'A complete guide for your new born baby.',
                                    style: kPoppinsBold.copyWith(
                                      fontSize: 14,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        '16 lessons',
                                        style: kPoppinsSemiBold.copyWith(
                                            color:kGrey,
                                            fontSize: 12
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                      height:35
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Events and Experience',
                              style: kPoppinsSemiBold.copyWith(
                                fontSize:18,
                              )
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('View all',
                              style: kPoppinsRegular.copyWith(
                                fontSize:12,
                              )
                          ),
                          SizedBox(width:10),
                          SvgPicture.asset(
                            'assets/view_all.svg',
                            height: 12,
                            width: 13,
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                      height:25
                  ),
                  SizedBox(
                    height: 315,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.all(12),
                            margin: const EdgeInsets.only(right: 20.0),
                            height: 304,
                            width: 255,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(kBorderRadius),
                              color: kWhite,
                              boxShadow: [
                                BoxShadow(
                                  color: kDarkBlue.withOpacity(0.051),
                                  offset: const Offset(0.0, 3.0),
                                  blurRadius: 24.0,
                                  spreadRadius: 0.0,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 164,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(kBorderRadius),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/img.png',
                                        ))),
                                ),
                                const SizedBox(height: 18),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [

                                    Flexible(
                                      child: Text(
                                        'BABYCARE',
                                        style: kPoppinsSemiBold.copyWith(
                                            color:kBlue,
                                            fontSize: 16
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Flexible(
                                  child: Text(
                                    'Understanding of human behaviour.',
                                    style: kPoppinsBold.copyWith(
                                      fontSize: 14,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        '13 Feb, Sunday',
                                        style: kPoppinsSemiBold.copyWith(
                                            color:kGrey,
                                            fontSize: 12
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Container(
                                      constraints: BoxConstraints(
                                          maxHeight: 25,
                                          maxWidth: 65
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            kBorderRadius,
                                          ),
                                          color: kBlue),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children:
                                          [
                                            Text('Book',
                                                style: kPoppinsMedium.copyWith(
                                                    color: khomeColor,
                                                    fontSize: 14
                                                )),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                      height:25
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Lessons for you',
                              style: kPoppinsSemiBold.copyWith(
                                fontSize:18,
                              )
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('View all',
                              style: kPoppinsRegular.copyWith(
                                fontSize:12,
                              )
                          ),
                          SizedBox(width:10),
                          SvgPicture.asset(
                            'assets/view_all.svg',
                            height: 12,
                            width: 13,
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                      height:25
                  ),

                  SizedBox(
                    height: 315,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.all(12),
                            margin: const EdgeInsets.only(right: 20.0),
                            height: 304,
                            width: 255,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(kBorderRadius),
                              color: kWhite,
                              boxShadow: [
                                BoxShadow(
                                  color: kDarkBlue.withOpacity(0.051),
                                  offset: const Offset(0.0, 3.0),
                                  blurRadius: 24.0,
                                  spreadRadius: 0.0,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 164,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(kBorderRadius),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image:  AssetImage(
                                          'assets/img_1.png',
                                        )
                                      )
                                  ),
                                ),
                                const SizedBox(height: 18),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [

                                    Flexible(
                                      child: Text(
                                        'BABYCARE',
                                        style: kPoppinsSemiBold.copyWith(
                                            color:kBlue,
                                            fontSize: 16
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Flexible(
                                  child: Text(
                                    'Understanding of human behaviour.',

                                    style: kPoppinsBold.copyWith(
                                      fontSize: 14,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        '3 min',
                                        style: kPoppinsSemiBold.copyWith(
                                            color:kGrey,
                                            fontSize: 12
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    SvgPicture.asset(
                                      'assets/lock.svg',
                                      height: 15,
                                      width: 15,
                                    )
                                  ],
                                ),

                              ],
                            ),
                          );
                        }),
                  ),

                ],
              ),
            )
          ],
        )
    );
  }
}
