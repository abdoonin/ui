// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:CTE/BlogsPage.dart';
import 'package:CTE/ChallengesPage.dart';
import 'package:CTE/CommuntyPage.dart';
import 'package:CTE/CoursesPage.dart';
import 'package:CTE/GuidesPage.dart';
import 'package:CTE/ProgramsPage.dart';
import 'package:CTE/ProjectsPage.dart';
import 'package:CTE/profile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required course});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//

// Then you can use it like this:

  //
  void launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'الرابط لا يعمل  $url';
    }
  }
//

  //متغير حتى نتوجه الى صفحة البروفايل
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                ),
                Expanded(
                  child: SizedBox(
                    width: 30,
                  ),
                ),

                Text('C T E',
                    style: GoogleFonts.dosis(
                        fontSize: 50, fontWeight: FontWeight.bold)),
                Padding(padding: EdgeInsets.all(10)),
                Expanded(
                  child: SizedBox(
                    width: 30,
                  ),
                ),

                //Image.asset('3.png',),??? ترهم صورة ؟

                // Expanded(
                //   child: TextFormField(
                //     decoration: InputDecoration(
                //         prefixIcon: Icon(Icons.search_rounded),
                //         hintText: "Search",
                //         border: InputBorder.none,
                //         fillColor: Colors.grey[200],
                //         filled: true),
                //     cursorColor: Colors.orange,
                //   ),
                // ),
                // Padding(
                //   padding: EdgeInsets.only(left: 10),
                //   child: Icon(
                //     Icons.menu_open_rounded,
                //     size: 50,
                //   ),
                // ),
              ],
            ),
            Container(height: 10),
            Text(
              "Catrogies",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Container(
              height: 15,
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.all(1),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CoursesPage()));
                          },
                          icon: Icon(
                            Icons.ondemand_video_outlined,
                            color: Colors.black,
                            size: 40,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(3)),
                      Text(
                        "COURSES",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black54),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(12)),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.all(1),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProgramsPage()));
                          },
                          icon: Icon(
                            Icons.get_app_rounded,
                            color: Colors.black,
                            size: 40,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(3)),
                      Text(
                        "PROGRAMS",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(12)),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.all(1),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProjectsPage()));
                          },
                          icon: Icon(
                            Icons.laptop_mac_rounded,
                            color: Colors.black,
                            size: 40,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(3)),
                      Text(
                        "PROJECTS",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(12)),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.all(1),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => ChallengesPage())));
                          },
                          icon: Icon(
                            Icons.question_mark_rounded,
                            color: Colors.black,
                            size: 40,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(3)),
                      Text(
                        "CHALLENGES",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(12)),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.all(1),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => CommuntyPage())));
                          },
                          icon: Icon(
                            Icons.comment_rounded,
                            color: Colors.black,
                            size: 40,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(3)),
                      Text(
                        "COMMUNITY",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(12)),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.all(1),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BlogsPage()));
                          },
                          icon: Icon(
                            Icons.web_rounded,
                            color: Colors.black,
                            size: 40,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(3)),
                      Text(
                        "BLOGS",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(12)),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.all(1),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => GuidesPage())));
                          },
                          icon: Icon(
                            Icons.web_stories_outlined,
                            color: Colors.black,
                            size: 40,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(3)),
                      Text(
                        "GUIDES",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(12)),
                ],
              ),
            ),
            Container(
              height: 30,
              margin: EdgeInsets.all(10),
              child: Text(
                "Best Articles",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
              ),
            ),
            GridView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              children: <Widget>[
                CategoryAccordion(
                    title: 'الذكاء الاصطناعي ',
                    url:
                        'https://www.oracle.com/ae-ar/artificial-intelligence/what-is-ai/',
                    icon: Icons.webhook_rounded),
                CategoryAccordion(
                    title: ' الامن السيبراني  ',
                    url:
                        'https://www.sfahat.com/article/42/%D8%A7%D9%84%D8%A3%D9%85%D9%86-%D8%A7%D9%84%D8%B3%D9%8A%D8%A8%D8%B1%D8%A7%D9%86%D9%8A-cybersecurity-%D8%AA%D8%B9%D8%B1%D9%8A%D9%81%D9%87-%D8%A3%D8%B7%D8%B1-%D8%A7%D9%84%D8%B9%D9%85%D9%84-%D8%A7%D9%84%D9%88%D8%B8%D8%A7%D8%A6%D9%81-%D8%A7%D9%84%D9%85%D8%AA%D8%A7%D8%AD%D8%A9-%D9%85%D8%B9-%D8%B1%D9%88%D8%A7%D8%AA%D8%A8%D9%87%D8%A7',
                    icon: Icons.security_rounded),
                CategoryAccordion(
                    title: ' الفايربايس   ',
                    url:
                        'https://www.sfahat.com/article/42/%D8%A7%D9%84%D8%A3%D9%85%D9%86-%D8%A7%D9%84%D8%B3%D9%8A%D8%A8%D8%B1%D8%A7%D9%86%D9%8A-cybersecurity-%D8%AA%D8%B9%D8%B1%D9%8A%D9%81%D9%87-%D8%A3%D8%B7%D8%B1-%D8%A7%D9%84%D8%B9%D9%85%D9%84-%D8%A7%D9%84%D9%88%D8%B8%D8%A7%D8%A6%D9%81-%D8%A7%D9%84%D9%85%D8%AA%D8%A7%D8%AD%D8%A9-%D9%85%D8%B9-%D8%B1%D9%88%D8%A7%D8%AA%D8%A8%D9%87%D8%A7',
                    icon: Icons.whatshot_rounded),
                CategoryAccordion(
                    title: ' المعالج   ',
                    url: 'https://aws.amazon.com/ar/what-is/cpu/',
                    icon: Icons.account_tree_rounded),
                CategoryAccordion(
                    title: ' قواعد البيانات   ',
                    url:
                        'https://www.oracle.com/bh-ar/database/what-is-database/',
                    icon: Icons.data_object_rounded),
                CategoryAccordion(
                    title: ' شبكة الحاسوب   ',
                    url:
                        'https://ar.wikipedia.org/wiki/%D8%B4%D8%A8%D9%83%D8%A9_%D8%AD%D8%A7%D8%B3%D9%88%D8%A8',
                    icon: Icons.wifi_tethering_rounded),
                CategoryAccordion(
                    title: ' اساسيات الحاسوب   ',
                    url:
                        'https://harmash.com/tutorials/computer-fundamentals/functions-and-advantages',
                    icon: Icons.desktop_windows_rounded),
                CategoryAccordion(
                    title: ' المعالج   ',
                    url: 'https://aws.amazon.com/ar/what-is/cpu/',
                    icon: Icons.account_tree_rounded),
              ],
            ),
            BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
                switch (index) {
                  case 0:
                    // Index of the Home button
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage(
                                course: null,
                              )),
                    );
                    break;
                  case 1:
                    // Index of the Settings button
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CommuntyPage()),
                    );
                    break;
                  case 2:
                    // Index of the Profile button
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                    break;
                  default:
                    // Handle default case if needed
                    break;
                }
              },
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.comment_rounded),
                  label: 'Communty',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'About me',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//هذا الكلاس الي جوة يسوي كارد بي رابط وعنوان ولوجو  للصفخة الرئيسة

class CategoryAccordion extends StatelessWidget {
  final String title;
  final String url;
  final IconData icon;

  CategoryAccordion(
      {required this.title, required this.url, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(5),
          ),
          padding: EdgeInsets.all(1),
          child: IconButton(
            onPressed: () {
              launchURL(url);
            },
            icon: Icon(
              icon,
              color: Colors.black,
              size: 140,
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(3)),
        Text(
          title,
          style: GoogleFonts.cairoPlay(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  void launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'الرابط لا يعمل  $url';
    }
  }
}
