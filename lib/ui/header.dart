import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/ui/responsive_widget.dart';

import 'package:url_launcher/url_launcher_string.dart';

import '../config/constants.dart';
import '../config/colors.dart';
import 'package:hovering/hovering.dart';
import 'package:mailto/mailto.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ResponsiveWidget(
        desktopScreen: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, my name is',
                style: TextStyle(
                  color: AppColors.lightNeon,
                  fontSize: 18,
                ),
              ),
              Row(
                children: [

                  Text(
                    '$kHomeMyName',
                    style: TextStyle(
                      color: Colors.grey[100],
                      fontSize: 70,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
              Text(
                kHeaderJobTitle,
                style: TextStyle(
                  color: AppColors.lightNeon,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Text(
                  kHeaderDescription,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                ),
              ),
              const SizedBox(height: 30),
            Row(
              children: [
                HoverContainer(
                  hoverColor: Colors.grey[900],


                  child: TextButton(

                    style: TextButton.styleFrom(
                      side: BorderSide(
                        color: AppColors.lightNeon,
                      ),
                      backgroundColor:Colors.transparent,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 20,
                      ),
                    ),
                    onPressed: _downloadCV,
                    child: Text(
                      'Download CV',
                      style: TextStyle(
                        color: AppColors.lightNeon,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                HoverContainer(
                  hoverColor: Colors.grey[900],


                  child: TextButton(

                    style: TextButton.styleFrom(
                      side: BorderSide(
                        color: AppColors.lightNeon,
                      ),
                      backgroundColor:Colors.transparent,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 20,
                      ),
                    ),
                    onPressed: _launchMailto,
                    child: Text(
                      'Get In Touch',
                      style: TextStyle(
                        color: AppColors.lightNeon,
                      ),
                    ),
                  ),
                ),
              ],
            ),
              const SizedBox(height: 100),
            ],
          ),
        ),
        mobileScreen: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .15,
          ),
          child: FittedBox(
            child: Column(
              children: [
                Text(
                  'Hi, my name is',
                  style: TextStyle(
                    color: AppColors.lightNeon,
                    fontSize: 18,
                  ),
                ),
                Row(
                  children: [

                    Text(
                      '$kHomeMyName',
                      style: TextStyle(
                        color: Colors.grey[100],
                        fontSize: 70,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
                Text(
                  kHeaderJobTitle,
                  style: TextStyle(
                    color: AppColors.lightNeon,
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    kHeaderDescription,
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    HoverContainer(
                      hoverColor: Colors.grey[900],


                      child: TextButton(

                        style: TextButton.styleFrom(
                          side: BorderSide(
                            color: AppColors.lightNeon,
                          ),
                          backgroundColor:Colors.transparent,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 20,
                          ),
                        ),
                        onPressed: _downloadCV,
                        child: Text(
                          'Download CV',
                          style: TextStyle(
                            color: AppColors.lightNeon,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    HoverContainer(
                      hoverColor: Colors.grey[900],


                      child: TextButton(

                        style: TextButton.styleFrom(
                          side: BorderSide(
                            color: AppColors.lightNeon,
                          ),
                          backgroundColor:Colors.transparent,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 20,
                          ),
                        ),
                        onPressed: _launchMailto,
                        child: Text(
                          'Get In Touch',
                          style: TextStyle(
                            color: AppColors.lightNeon,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      );

  void _downloadCV() {
    launchUrlString(AppConstants.cv);
  }
  void _launchMailto() async {
    final mailtoLink = Mailto(
      to: [' <nebiyu28@gmail.com> '],
      subject: ' <Work with us> ',
body: ' <body> ',
    );

    await launchUrlString('$mailtoLink');
  }
}
