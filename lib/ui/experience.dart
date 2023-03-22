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
                    Tab(text: '2019 - Present'),
                    Tab(text: '2017 - 2019'),
                    Tab(text: '2015 - 2017'),
                  ],
                  views: [
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Text('Software Engineer',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              )),
                          Text('Tata Consultancy Services',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              )),
                          Text('Bangalore, India',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              )),
                          Text(
                              'I am currently working as a Software Engineer at Tata Consultancy Services. I am working on a project called "TCS iON" which is a learning management system. I am working on the frontend of the project using Angular 8 and Typescript. I am also working on the backend of the project using Java and Spring Boot. I am also working on the database of the project using MySQL. I am also working on the deployment of the project using Docker and Kubernetes.',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              )),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text('Software Engineer',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              )),
                          Text('Tata Consultancy Services',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              )),
                          Text('Bangalore, India',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              )),
                          Text(
                              'I worked as a Software Engineer at Tata Consultancy Services. I worked on a project called "TCS iON" which is a learning management system. I worked on the frontend of the project using Angular 8 and Typescript. I also worked on the backend of the project using Java and Spring Boot. I also worked on the database of the project using MySQL. I also worked on the deployment of the project using Docker and Kubernetes.',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              )),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(children: [
                        Text('Software Engineer',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            )),
                        Text('Tata Consultancy Services',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            )),
                        Text('Bangalore, India',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
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
                    TextStyle(fontSize: 12, fontWeight: FontWeight.w900),
                    unselectedLabelStyle:
                    TextStyle(fontSize: 12, fontWeight: FontWeight.w900),
                    position: TabBarPosition.top,
                  ),
                  tabs: [
                    Tab(text: '2019 - Present'),
                    Tab(text: '2017 - 2019'),
                    Tab(text: '2015 - 2017'),
                  ],
                  views: [
                    Container(
                      child: Column(

                        children: [
                          Text('Software Engineer',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              )),
                          Text('Tata Consultancy Services',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              )),
                          Text('Bangalore, India',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w900,
                              )),
                          Text(
                              'I am currently working as a Software Engineer at Tata Consultancy Services. I am working on a project called "TCS iON" which is a learning management system. I am working on the frontend of the project using Angular 8 and Typescript. I am also working on the backend of the project using Java and Spring Boot. I am also working on the database of the project using MySQL. I am also working on the deployment of the project using Docker and Kubernetes.',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w900,
                              )),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text('Software Engineer',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              )),
                          Text('Tata Consultancy Services',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w900,
                              )),
                          Text('Bangalore, India',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w900,
                              )),
                          Text(
                              'I worked as a Software Engineer at Tata Consultancy Services. I worked on a project called "TCS iON" which is a learning management system. I worked on the frontend of the project using Angular 8 and Typescript. I also worked on the backend of the project using Java and Spring Boot. I also worked on the database of the project using MySQL. I also worked on the deployment of the project using Docker and Kubernetes.',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w900,
                              )),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(children: [
                        Text('Software Engineer',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                            )),
                        Text('Tata Consultancy Services',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                            )),
                        Text('Bangalore, India',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w900,
                            )),
                        Text( 'I worked as a Software Engineer at Tata Consultancy Services. I worked on a project called "TCS iON" which is a learning management system. I worked on the frontend of the project using Angular 8 and Typescript. I also worked on the backend of the project using Java and Spring Boot. I also worked on the database of the project using MySQL. I also worked on the deployment of the project using Docker and Kubernetes.',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
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
