// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:ui/BlogsPage.dart';
import 'package:ui/ChallengesPage.dart';
import 'package:ui/CommuntyPage.dart';
import 'package:ui/CoursesPage.dart';
import 'package:ui/GuidesPage.dart';
import 'package:ui/ProgramsPage.dart';
import 'package:ui/ProjectsPage.dart';
import 'package:ui/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                Expanded(
                    child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search_rounded),
                      hintText: "Search",
                      border: InputBorder.none,
                      fillColor: Colors.grey[200],
                      filled: true),
                )),
                Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.menu_open_rounded,
                      size: 50,
                    ))
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            GridView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              children: [
                Card(
                  child: Column(
                    children: [
                      Container(
                        height: 144,
                        width: 155,
                        child: Image.asset("images/6.png"),
                      ),
                      Container(
                        color: Colors.amber,
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Container(
                        height: 143,
                        width: 155,
                        decoration: BoxDecoration(),
                        child: Image.asset("images/5.png"),
                      ),
                      Container(
                        color: Colors.amber,
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Container(
                        height: 143,
                        width: 155,
                        child: Image.asset("images/3.png"),
                      ),
                      Container(
                        color: Colors.amber,
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Container(
                        height: 143,
                        width: 155,
                        child: Image.asset("images/6.png"),
                      ),
                      Container(
                        color: Colors.amber,
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Container(
                        height: 143,
                        width: 155,
                        child: Image.asset("images/5.png"),
                      ),
                      Container(
                        color: Colors.amber,
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Container(
                        height: 143,
                        width: 155,
                        child: Image.asset("images/5.png"),
                      ),
                      Container(
                        color: Colors.amber,
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Container(
                        height: 143,
                        width: 155,
                        child: Image.asset("images/4.png"),
                      ),
                      Container(
                        color: Colors.amber,
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Container(
                        height: 143,
                        width: 155,
                        child: Image.asset("images/3.png"),
                      ),
                      Container(
                        color: Colors.amber,
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Container(
                        height: 143,
                        width: 155,
                        child: Image.asset("images/5.png"),
                      ),
                      Container(
                        color: Colors.amber,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
                if (index == 2) {
                  // Index of the Profile button
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                }
              },
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Search',
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
