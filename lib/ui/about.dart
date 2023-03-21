import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:flutter_web_portfolio/config/constants.dart';

import 'responsive_widget.dart';
import '../data/skills.dart';
import '../config/styles.dart';
import '../config/colors.dart';


class About extends StatelessWidget {


  @override
  Widget build(BuildContext context) => ResponsiveWidget(
        desktopScreen: Container(
          color: kBackgroundColor,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .15,
            vertical: 100,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: Container(
                      color: AppColors.greyLight,
                      child: Image.asset(
                       kAboutAvatarImage,
                        width: 300,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('01. ', style: TextStyle(color: AppColors.lightNeon, fontSize: 20, fontWeight: FontWeight.bold)),
                            Text(
                              'ABOUT ME',
                              style: TextStyle(
                                color: AppColors.lightNeon,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(kAboutDescription,


                          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                color: Colors.grey,
                                fontSize: 20,
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
                                  'View Resume',
                                  style: TextStyle(
                                    color: AppColors.lightNeon,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
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
                                onPressed: _goToGithub,
                                child: Text(
                                  'Github',
                                  style: TextStyle(
                                    color: AppColors.lightNeon,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
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
                                onPressed: _goToLinkedin,
                                child: Text(
                                  'Linkedin',
                                  style: TextStyle(
                                    color: AppColors.lightNeon,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 100),
              Text('MY SKILLS', style: AppStyles.title),
              Container(width: 100, height: 2, color: AppColors.lightNeon),
              const SizedBox(height: 3),
              Container(width: 75, height: 2, color: AppColors.lightNeon),
              const SizedBox(height: 50),
              Wrap(
                spacing: 25,
                runSpacing: 25,
                runAlignment: WrapAlignment.spaceBetween,
                children: SKILLS.map(_buildSkill).toList(),
              ),
            ],
          ),
        ),
        mobileScreen: Container(
          color: kBackgroundColor,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .15,
            vertical: 50,
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Container(
                  color: AppColors.greyLight,
                  child: Image.asset(
                   kAboutAvatarImage,
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'ABOUT ME',
                style: TextStyle(
                  color: AppColors.lightNeon,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                kAboutDescription,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: Colors.grey,
                  fontSize: 13,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),

              const SizedBox(height: 20),
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
                    'View Resume',
                    style: TextStyle(
                      color: AppColors.lightNeon,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
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
                  onPressed: _goToGithub,
                  child: Text(
                    'Github',
                    style: TextStyle(
                      color: AppColors.lightNeon,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
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
                  onPressed: _goToLinkedin,
                  child: Text(
                    'Linkedin',
                    style: TextStyle(
                      color: AppColors.lightNeon,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Text('MY SKILLS', style: AppStyles.title),
              Container(width: 75, height: 2, color: AppColors.lightNeon),
              const SizedBox(height: 3),
              Container(width: 50, height: 2, color: AppColors.lightNeon),
              const SizedBox(height: 25),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.spaceBetween,
                children: SKILLS.map(_buildSkill).toList(),
              ),
            ],
          ),
        ),
      );
void _goToGithub(){
    launchUrlString(AppConstants.github);
  }
  void _goToLinkedin(){
  launchUrlString(AppConstants.linkedin);
  }
}
  void _downloadCV() {
    launchUrlString(AppConstants.cv);
  }

      Widget _buildSkill(Skill skill) =>  HoverContainer(
      hoverColor: Colors.grey[900],

      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            side: BorderSide(
              color: AppColors.lightNeon,

            ),
            backgroundColor:Colors.transparent,
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 20,
            ),
          ),

          child: Text(skill.name!,style: TextStyle(
            color: Colors.grey,
          ),)));

