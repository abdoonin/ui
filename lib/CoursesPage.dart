// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class CoursesPage extends StatelessWidget {
  //سوي فيوجر فويد علمود url تسغيل روابط

  void launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'الرابط لا يعمل  $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 10,
              child: InkWell(
                onTap: () {
                  launchURL(
                    'https://www.coursera.org/learn/computer-hardware-software',
                  );
                },
                child: Container(
                  height: 135,
                  width: 320,
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/computer.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'دورة اساسيات الحاسوب ',
                              style: GoogleFonts.rubik(
                                textStyle: TextStyle(),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'تعلم أساسيات الحاسوب من ناحية السوفوير والهاردوير ',
                              style: GoogleFonts.rubik(
                                textStyle: TextStyle(),
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 10,
              child: InkWell(
                onTap: () {
                  launchURL(
                    'https://www.coursera.org/learn/foundations-data-data-everywhere-arabic',
                  );
                },
                child: Container(
                  height: 135,
                  width: 320,
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/database.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'دورة اسس البيانات',
                              style: GoogleFonts.rubik(
                                textStyle: TextStyle(),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'تعلم أساسيات البيانات واكتشف كيفية تطبيقها في العالم الحقيقي',
                              style: GoogleFonts.rubik(
                                textStyle: TextStyle(),
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
