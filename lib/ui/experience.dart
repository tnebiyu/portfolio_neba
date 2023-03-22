import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/config/colors.dart';
import 'package:flutter_web_portfolio/config/constants.dart';

import '../config/styles.dart';
import '../data/projects.dart';
import 'responsive_widget.dart';
import 'icon.dart';
import 'package:tab_container/tab_container.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';

class Experience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Container(
          height: 500,
          color: kBackgroundColor,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .15,
          ),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('02.',
                    style: TextStyle(
                      color: AppColors.lightNeon,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    )),
                const SizedBox(width: 10),
                Text('WORK EXPERIENCE',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                    )),
                const SizedBox(width: 20),
                Container(
                  width: 360,
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.5,

                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 800,
              height: 400,
              child: ContainedTabBarView(
                  tabBarProperties: TabBarProperties(
                    height: 50,
                    indicatorColor: AppColors.lightNeon,
                    labelColor: AppColors.lightNeon,
                    unselectedLabelColor: Colors.grey,
                    labelStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    unselectedLabelStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    position: TabBarPosition.top,
                  ),
                  tabs: [
                    Tab(text: 'Dec 2022 - Present'),
                    Tab(text: ' July 2022- Dec 2022'),
                    Tab(text: 'Sep 2021 - Jun 2022'),
                  ],
                  views: [
                    Container(
                      child: Column(

                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text('Software Engineer',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 22,
                                fontWeight: FontWeight.w900,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Zoe Techs',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              )),
                          Text('Addis Ababa, Ethiopia',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,

                              )),

                          SizedBox(
                            height: 10,),
                          Text(
                              'I am currently working as a Software Developer at Zoe Techs.',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,

                              )),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,),
                          Text('Software Engineer',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 22,
                                fontWeight: FontWeight.w900,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Yament Trading',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              )),
                          Text('Addis Ababa, Ethiopia',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Text('I worked as a Software Engineer at Yament Trading. I maintained and bug fix the official company website, created digital contents for promotion and managed the company\'s social media accounts ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,

                              )),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(children: [
                        SizedBox(
                          height: 30,),
                        Text('Software Engineer',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                            )),
                        SizedBox(
                          height: 10,),
                        Text('Kenera International Trading',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                            )),
                        Text('Addis Ababa, Ethiopia',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,

                            )),
                        SizedBox(
                          height: 10,),
                        Text( 'I worked as a Software Engineer at Kenera International Trading. Developed Kenera app that allows user to communicate on project and show recent products and company news to customers,     participate in a project called secured printing system that helps the client to print their documents securely and participate in a project called Document management system that helps the client to print their documents securely.',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,


                            )),
                      ]),
                    )
                  ]),
            )
          ])),
      mobileScreen: Container(
        color: kBackgroundColor,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 50,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('02. ',
                    style: TextStyle(
                        color: AppColors.lightNeon,
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
                Text(
                  'WORK EXPERIENCE',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 30,
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.5,

                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 800,
              height: 500,
              child: ContainedTabBarView(
                  tabBarProperties: TabBarProperties(
                    height: 50,
                    indicatorColor: AppColors.lightNeon,
                    labelColor: AppColors.lightNeon,
                    unselectedLabelColor: Colors.grey,
                    labelStyle:
                    TextStyle(fontSize: 8,),
                    unselectedLabelStyle:
                    TextStyle(fontSize: 8, ),
                    position: TabBarPosition.top,
                  ),
                  tabs: [
                    Tab(text: 'Dec 2022 - Present'),
                    Tab(text: ' July 2022- Dec 2022'),
                    Tab(text: 'Sep 2021 - Jun 2022'),
                  ],
                  views: [
                    Container(
                      child: Column(

                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text('Software Engineer',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Zoe Techs',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              )),
                          Text('Addis Ababa, Ethiopia',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,

                              )),

                          SizedBox(
                            height: 10,),
                          Text(
                              'I am currently working as a Software Developer at Zoe Techs.',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,

                              )),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,),
                          Text('Software Engineer',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Yament Trading',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w900,
                              )),
                          Text('Addis Ababa, Ethiopia',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Text('I worked as a Software Engineer at Yament Trading. I maintained and bug fix the official company website, created digital contents for promotion and managed the company\'s social media accounts ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,

                              )),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(children: [
                        SizedBox(
                          height: 30,),
                        Text('Software Engineer',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                            )),
                        SizedBox(
                          height: 10,),
                        Text('Kenera International Trading',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                            )),
                        Text('Addis Ababa, Ethiopia',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,

                            )),
                        SizedBox(
                          height: 10,),
                        Text( 'I worked as a Software Engineer at Kenera International Trading. Developed Kenera app that allows user to communicate on project and show recent products and company news to customers,     participate in a project called secured printing system that helps the client to print their documents securely and participate in a project called Document management system that helps the client to print their documents securely.',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,

                            )),
                      ]),
                    )
                  ]),
            )

          ],
        ),
      ),
    );
  }

  Widget _buildStatistic(
      BuildContext context, String icon, String total, String description) {
    return ResponsiveWidget(
      desktopScreen: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppIcon(icon, size: 50),
          const SizedBox(height: 5),
          Text(
            total,
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            description,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      mobileScreen: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppIcon(icon, size: 40),
          const SizedBox(height: 5),
          Text(
            total,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            description,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
