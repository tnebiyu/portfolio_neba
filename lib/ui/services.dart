import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/config/constants.dart';
import 'package:flutter_web_portfolio/ui/responsive_widget.dart';

import '../config/styles.dart';
import '../config/colors.dart';
import 'icon.dart';

class Service extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Container(
        color: kBackgroundColor,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 100,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('03. ',
                    style: TextStyle(
                        color: AppColors.lightNeon,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                Text(
                  'What I\'m Offering',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox( width: 20),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(

                  child: __buildProcess(
                      context,
                      '01.',
                      'icons/pencil.png',
                      'Plan',
                      'Product design, UI/UX design, Design systems'),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: __buildProcess(
                      context,
                      '02.',
                      'icons/design.png',
                      'Development',
                      'Developing scalable web apps and mobile apps'),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: __buildProcess(
                      context,
                      '03.',
                      'icons/coding.png',
                      'Maintenance',
                      'Continuous monitoring, maintenance and support'),
                )
              ],
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
            Row(
              children: [
                Text('03. ',
                    style: TextStyle(
                        color: AppColors.lightNeon,
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
                Text(
                  'What I\'m Offering',
                  style:TextStyle(

                    color: Colors.grey[500],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),

                  textAlign: TextAlign.center,
                ),
                SizedBox( width: 20),
                Container(
                  width: 30,
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.5,

                  ),
                )
              ],
            ),

            const SizedBox(height: 50),
            __buildProcess(context, '01.', 'icons/pencil.png', 'Plan',
                'Product design, UI/UX design, Design systems'),
            const SizedBox(height: 10),
            __buildProcess(context, '02.', 'icons/design.png', 'Design',
                'Developing scalable web apps and mobile apps'),
            const SizedBox(height: 10),
            __buildProcess(context, '03.', 'icons/coding.png', 'Code',
                'Continuous monitoring, maintenance and support'),
          ],
        ),
      ),
    );
  }

  Widget __buildProcess(BuildContext context, String index, String iconPath,
      String title, String description) {
    return Container(
      decoration: BoxDecoration(
        color: kCardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text(
                index,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.grey[400],
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Divider(color: AppColors.greyLight),
            const SizedBox(height: 10),
            AppIcon(iconPath, color: AppColors.lightNeon, size: 40),
            const SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
