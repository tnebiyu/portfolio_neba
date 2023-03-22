import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'responsive_widget.dart';
import '../data/projects.dart';
import '../config/styles.dart';
import '../config/colors.dart';

class MyProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Container(

        padding: EdgeInsets.symmetric(vertical: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('04. ',
                    style: TextStyle(
                        color: AppColors.lightNeon,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                Text(
                    'MY PROJECTS',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                      fontSize: 32,


                    )
                ),
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
            const SizedBox(height: 50),
            ...PROJECTS.map((p) => _buildProject(context, p)).toList(),
          ],
        ),
      ),
      mobileScreen: Container(

        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 50,
        ),
        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('04. ',
                    style: TextStyle(
                        color: AppColors.lightNeon,
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
                Text(
                    'MY PROJECTS',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                      fontSize: 20,


                    )
                ),
                const SizedBox(width: 20),
                Container(
                  width: 60,
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.5,

                  ),
                )

              ],
            ),
            const SizedBox(height: 50),
            Wrap(
              children: PROJECTS.map((p) => _buildProject(context, p)).toList(),
              spacing: 5,
              runSpacing: 5,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProject(BuildContext context, Project project) =>
      ResponsiveWidget(
        desktopScreen: SizedBox(
          width: MediaQuery.of(context).size.width * .7,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.width * .3,
                    child: Image.asset(project.image!),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * .075),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.width * .01,
                        ),
                        Text(project.name!, style: TextStyle(
                          color: Colors.grey[300],
                          fontSize: 22,


                        )),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * .01,
                        ),
                        Text(project.description!, style: TextStyle(
                          color: Colors.grey[300],
                          fontSize: 14,
                        ),),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * .025,
                        ),
                        Wrap(
                          spacing: 10,
                          children: project.skills!
                              .map((s) => Chip(label: Text(s)))
                              .toList(),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * .025,
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            primary: AppColors.black,
                            backgroundColor: AppColors.lightNeon,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {
                            launch(project.url!);
                          },

                          child: Text('Visit'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                color: AppColors.black.withOpacity(.1),
                height: 20,
                thickness: 1,
              ),
            ],
          ),
        ),
        mobileScreen: SizedBox(
          width: MediaQuery.of(context).size.width * .7,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * .75,
                child: Image.asset(project.image!),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * .075),
              SizedBox(
                height: MediaQuery.of(context).size.width * .01,
              ),
              Text(project.name!, style:TextStyle(
                color: Colors.grey[300],
                fontSize: 22,
              )),
              SizedBox(
                height: MediaQuery.of(context).size.width * .01,
              ),
              Text(
                project.description!,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * .025,
              ),
              Wrap(
                spacing: 10,
                alignment: WrapAlignment.center,
                children:
                    project.skills!.map((s) => Chip(label: Text(s))).toList(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * .025,
              ),
              TextButton(
                onPressed: () {
                  launchUrlString(project.url!);
                },
                style: TextButton.styleFrom(
                  primary: AppColors.black,
                  backgroundColor: AppColors.lightNeon,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text('Visit'),
              ),
              Divider(
                color: AppColors.black.withOpacity(.1),
                height: 50,
                thickness: 1,
              ),
            ],
          ),
        ),
      );
}
