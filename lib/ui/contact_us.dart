import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/ui/icon.dart';
import 'package:hovering/hovering.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'responsive_widget.dart';
import '../config/constants.dart';
import '../config/styles.dart';
import '../config/colors.dart';
import '../utils/extensions.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController(),
      _emailController = TextEditingController(),
      _contentController = TextEditingController();

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
            Text('GET IN TOUCH', style: AppStyles.title),
            Container(width: 100, height: 2, color: AppColors.lightNeon),
            const SizedBox(height: 3),
            Container(width: 75, height: 2, color: AppColors.lightNeon),
            const SizedBox(height: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildContactInfo(
                        'icons/email.png',
                        'Mail Me:',
                        AppConstants.mail,

                      ),
                      const SizedBox(height: 20),
                      _buildContactInfo(
                        'icons/call.png',
                        'Call Me:',
                        AppConstants.phone,
                      ),
                      const SizedBox(height: 20),
                      _buildContactInfo(
                        'icons/pin.png',
                        'Location:',
                        AppConstants.location,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: _buildContactForm(context),
                ),
              ],
            )
          ],
        ),
      ),
      mobileScreen: Container(
        color: kBackgroundColor,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 100,
        ),
        child: Column(
          children: [
            Text(
              'GET IN TOUCH',
              style: AppStyles.title,
              textAlign: TextAlign.center,
            ),
            Container(width: 75, height: 2, color: AppColors.lightNeon),
            const SizedBox(height: 3),
            Container(width: 50, height: 2, color: AppColors.lightNeon),
            const SizedBox(height: 50),
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildContactInfo(
                      'icons/email.png',
                      'Mail Me:',
                      AppConstants.mail,
                    ),
                    const SizedBox(height: 20),
                    _buildContactInfo(
                      'icons/call.png',
                      'Call Me:',
                      AppConstants.phone,
                    ),
                    const SizedBox(height: 20),
                    _buildContactInfo(
                      'icons/pin.png',
                      'Location:',
                      AppConstants.location,
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                _buildContactForm(context),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildContactInfo(String imagePath, String title, String content) {
    return FittedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppIcon(imagePath, color: AppColors.lightNeon, size: 20),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.grey[300],
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                content,
                style: TextStyle(color: Colors.grey[100]),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildContactForm(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Have Something To Write?',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 25),
        Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      validator: (text) {
                        return (text!.isValidName())
                            ? null
                            : 'Please insert valid name!';
                      },
                      decoration: InputDecoration(
                        hintText: 'Your Name',
                       hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: TextFormField(
                      validator: (text) {
                        return (text!.isValidEmail)
                            ? null
                            : 'Please insert valid email!';
                      },
                      decoration: InputDecoration(
                        hintText: 'Your Email',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TextFormField(
                minLines: 3,
                maxLines: 10,
                validator: (text) {
                  return (text!.isValidName(minLength: 10))
                      ? null
                      : 'Please insert valid message!, at least 10 characters';
                },
                decoration: InputDecoration(
                  hintText: 'Your Message',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(),
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
                      vertical: 15,
                    ),
                  ),
                  onPressed: _sendMail,
                  child: Text(
                    'Send',
                    style: TextStyle(
                      color: AppColors.lightNeon,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  void _sendMail() async {
    bool isValidForm = _formKey.currentState!.validate();
    if (!isValidForm) return;

    final mailto = Mailto(
      to: [AppConstants.mail],
      subject: _nameController.text.trim(),
      body: _contentController.text.trim(),
    );



await launchUrlString('$mailto');


    final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 3000);
    String renderHtml(Mailto mailto) => '''<html><head><title>mailto example</title></head><body><a href="$mailto">Open mail client</a></body></html>''';
    await for (HttpRequest request in server) {
      request.response
        ..statusCode = HttpStatus.ok
        ..headers.contentType = ContentType.html
        ..write(renderHtml(mailto));
      await request.response.close();
    }
  }
  // final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 3000);
  // String renderHtml(Mailto mailto) =>
  //     '''<html><head><title>mailto example</title></head><body><a href="$mailto">Open mail client</a></body></html>''';
  // await for (HttpRequest request in server) {
  //   request.response
  //     ..statusCode = HttpStatus.ok
  //     ..headers.contentType = ContentType.html
  //     ..write(renderHtml(mailto));
  //   await request.response.close();
  //   print(mailto.toString());

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _contentController.dispose();
    super.dispose();
  }
}
