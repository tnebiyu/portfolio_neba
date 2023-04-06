import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/ui/responsive_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'about.dart';
import 'contact_us.dart';
import 'footer.dart';
import 'header.dart';
import 'icon.dart';
import 'my_projects.dart';
import 'experience.dart';
import 'services.dart';
import '../config/colors.dart';
import '../config/constants.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _headerGlobalKey = GlobalKey();
  final _aboutGlobaleKey = GlobalKey();
  final _statisticsGlobaleKey = GlobalKey();
  final _workingProcessGlobaleKye = GlobalKey();
  final _recentProjectsGlobaleKey = GlobalKey();
  final _contactUsGlobaleKey = GlobalKey();

  final _scrollController = ScrollController();

  final _fabStream = StreamController<bool>();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      _fabStream.sink.add(_scrollController.offset > 500);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Scaffold(
        body:

                Container(
                color: Color(0xff012E41),
                  child: CustomScrollView(
                    controller: _scrollController,
                    slivers: [
                      SliverAppBar(
                        key: _headerGlobalKey,
                        titleSpacing: 0,
                        toolbarHeight: 100,
                        backgroundColor: Colors.transparent,
                        flexibleSpace: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('$kCoverImage'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black,
                                  Colors.black87,
                                  Colors.transparent
                                ],
                              ),
                            ),
                          ),
                        ),
                        title: Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * .15,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(1000),
                            child: Container(
                              width: 40,
                              height: 40,
                              color: AppColors.lightNeon,
                              child: Image.asset('$kHomeIconImage', fit: BoxFit.cover,),
                            ),
                          ),
                        ),
                        bottom: PreferredSize(
                          preferredSize: Size.fromHeight(500),
                          child: Stack(children:[
                            Positioned(
                              top: 0,
                              left: 0,

                              bottom: 0,

                              child: Container(
                                height:200,
                                width: 50,
                                color: Colors.transparent,

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RotatedBox(
                                      quarterTurns: 1,
                                      child: RichText(
                                        text: TextSpan(
                                          text: 'nebiyu28@gmail.com',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    RotatedBox(
                                      quarterTurns: 1,
                                      child: RichText(
                                        text: TextSpan(
                                          text: '+251932549271',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
SizedBox(height: 20),


                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 190,
                              right: 0,

                              bottom: 0,

                              child: Container(
                                width: 50,
                                color: Colors.transparent,

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                  InkWell(
                                     onTap: () async {
                                       await launchUrlString(AppConstants.github);
                                      },
                                      child: AppIcon('icons/github.png',color: Colors.grey,)),
                                    SizedBox(height: 20),
                                    InkWell(
                                        onTap: () async {
                                          await launchUrlString(AppConstants.linkedin);
                                        },
                                        child: AppIcon('icons/linkedin.png',color: Colors.grey,)),
                                    SizedBox(height: 25),
                                    InkWell(
                                        onTap: () async {
                                          await launchUrlString(AppConstants.twitter);
                                        },
                                        child: AppIcon('icons/twitter.png',color: Colors.grey,)),
                                    SizedBox(height: 25),
                                    Container(
                                      height: 55,

                                      child: VerticalDivider(
                                        color: Colors.grey
                                        ,
                                        thickness: 2,
                                        width: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),


                            Header()]),
                        ),
                        actions: [
                          Row(
                            children: [
                              MaterialButton(
                               hoverColor: Colors.white60,
                                onPressed: _scrollToAbout,
                                highlightColor: Colors.white60,

                                child: Row(
                                  children: [
                                    Text('01.', style: TextStyle(
                                      color: AppColors.lightNeon,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                    SizedBox(width: 4),
                                    Text(
                                      'About Me',
                                      style: TextStyle(
                                          color: Colors.white, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              MaterialButton(
                                hoverColor: Colors.white60,
                                onPressed: _scrollToStatistics,
                                child: Row(
                                  children: [
                                    Text('02.', style: TextStyle(
                                      color: AppColors.lightNeon,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                    SizedBox(width: 4),
                                    Text(
                                      'Experience',
                                      style: TextStyle(
                                          color: Colors.white, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              MaterialButton(
                                hoverColor: Colors.white60,
                                onPressed: _scrollToWorkingProcess,
                                child: Row(
                                  children: [
                                    Text('03.', style: TextStyle(
                                      color: AppColors.lightNeon,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                    SizedBox(width: 4),
                                    Text(
                                      'Services',
                                      style: TextStyle(
                                          color: Colors.white, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              MaterialButton(
                                hoverColor: Colors.white60,
                                onPressed: _scrollToRecentProjects,
                                child: Row(
                                  children: [
                                    Text('04.', style: TextStyle(
                                      color: AppColors.lightNeon,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                    SizedBox(width: 4),
                                    Text(
                                      'Projects',
                                      style: TextStyle(
                                          color: Colors.white, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 20),
                              TextButton(
                                onPressed: _scrollToContactUs,
                                style: TextButton.styleFrom(
                                  backgroundColor: AppColors.lightNeon,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 40,
                                    vertical: 15,
                                  ),
                                ),
                                child: Text(
                                  'Contact Me',
                                  style: TextStyle(
                                      color: Colors.black, fontWeight: FontWeight.bold,
                                  fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width * .15),
                        ],
                      ),
                      ..._slivers(),
                    ],
                  ),

            ),


        floatingActionButton: _buildFab(),

      ),mobileScreen: Scaffold(
        drawer: Drawer(
          backgroundColor: kBackgroundColor,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: AppColors.lightNeon,
                    borderRadius: BorderRadius.circular(1000),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: Image.asset(
                      '$kAboutAvatarImage',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Divider(),
                ListTile(
                  onTap: _scrollToAbout,
                  title: Text(
                    'About Me',
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[500]),
                  ),
                ),
                ListTile(
                  onTap: _scrollToStatistics,
                  title: Text(
                    'Experience',
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[500]),

                  ),
                ),
                ListTile(
                  onTap: _scrollToWorkingProcess,
                  title: Text(
                    'Process',
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[500]),

                  ),
                ),
                ListTile(
                  onTap: _scrollToRecentProjects,
                  title: Text(
                    'Projects',
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[500]),

                  ),
                ),
                Divider(),
                const SizedBox(height: 20),
                ListTile(
                  title: TextButton(
                    onPressed: _scrollToContactUs,
                    style: TextButton.styleFrom(
                      backgroundColor: AppColors.lightNeon,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 15,
                      ),
                    ),
                    child: Text(
                      'Contact Me',
                      style: TextStyle(fontWeight: FontWeight.bold,color: kBackgroundColor, fontSize: 16),

                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () async {
                  launchUrlString(AppConstants.github);
                      },
                      child: AppIcon(
                        'icons/github.png',
                        color: AppColors.lightNeon,
                      ),
                    ),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        launchUrlString(AppConstants.linkedin);
                      },
                      child: AppIcon(
                        'icons/linkedin.png',
                        color: AppColors.lightNeon,
                      ),
                    ),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        launchUrlString(AppConstants.twitter);
                      },
                      child: AppIcon(
                        'icons/twitter.png',
                        color: AppColors.lightNeon,
                      ),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
                const SizedBox(height: 10),
                Text('nebiyu28@gmail.com', style: TextStyle(color: Colors.grey[300]),),
                const SizedBox(height: 10),
                Text('+251932549271',style: TextStyle(color: Colors.grey[300], fontWeight: FontWeight.bold),),
                const SizedBox(height: 10),
                Text('© 2023 All Rights Reserved',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
      color: Color(0xff012E41),
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                key: _headerGlobalKey,
                titleSpacing: 0,
                centerTitle: true,
                backgroundColor: Colors.transparent,
                leading: Align(
                  child: Builder(
                    builder: (ctx) => InkWell(
                      onTap: () {
                        Scaffold.of(ctx).openDrawer();
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(1000),
                        child: Container(
                          width: 40,
                          height: 40,

                          child: Icon(
                            Icons.menu,
                            color: AppColors.lightNeon,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                flexibleSpace: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('$kCoverImage'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black,
                          Colors.black87,
                          Colors.transparent
                        ],
                      ),
                    ),
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(350),
                  child: Header(),
                ),
              ),
              ..._slivers(),
            ],
          ),
        ),
        floatingActionButton: _buildFab(),
      ),
        );
  }

  List<Widget> _slivers() => [
        SliverToBoxAdapter(
          key: _aboutGlobaleKey,
          child: About(),
        ),
        SliverToBoxAdapter(
          key: _statisticsGlobaleKey,
          child: Experience(),
        ),
        SliverToBoxAdapter(
          key: _workingProcessGlobaleKye,
          child: Service(),
        ),
        SliverToBoxAdapter(
          key: _recentProjectsGlobaleKey,
          child: MyProjects(),
        ),
        SliverToBoxAdapter(
          key: _contactUsGlobaleKey,
          child: ContactUs(),
        ),
        SliverToBoxAdapter(
          child: Footer(),
        ),
      ];

  Widget _buildFab() {
    return StreamBuilder<bool>(
      stream: _fabStream.stream,
      builder: (_, data) {
        final bool showFab = data.hasData && data.data!;
        return AnimatedOpacity(
          opacity: showFab ? 1 : 0,
          duration: const Duration(milliseconds: 500),
          child: FloatingActionButton(
            onPressed: showFab
                ? _scrollToHeader
                : null, // make sure user cannot click when button hidden
            mini: true,
            child: AppIcon('icons/double-up-arrow.png', size: 20, color: kBackgroundColor),
          ),
        );
      },
    );
  }

  void _scrollToHeader() {
    Scrollable.ensureVisible(
      _headerGlobalKey.currentContext!,
      duration: const Duration(seconds: 1),
    );
  }

  void _scrollToAbout() {
    Scrollable.ensureVisible(
      _aboutGlobaleKey.currentContext!,
      duration: const Duration(seconds: 1),
    );
  }

  void _scrollToStatistics() {
    Scrollable.ensureVisible(
      _statisticsGlobaleKey.currentContext!,
      duration: const Duration(seconds: 1),
    );
  }

  void _scrollToWorkingProcess() {
    Scrollable.ensureVisible(
      _workingProcessGlobaleKye.currentContext!,
      duration: const Duration(seconds: 1),
    );
  }

  void _scrollToRecentProjects() {
    Scrollable.ensureVisible(
      _recentProjectsGlobaleKey.currentContext!,
      duration: const Duration(seconds: 1),
    );
  }

  void _scrollToContactUs() {
    Scrollable.ensureVisible(
      _contactUsGlobaleKey.currentContext!,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  void dispose() {
    _fabStream.close();
    super.dispose();
  }
}
