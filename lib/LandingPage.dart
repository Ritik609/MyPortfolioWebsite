import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatefulWidget {
  @override
  LandingPageState createState() => LandingPageState();
}

class LandingPageState extends State<LandingPage> {
  void _launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [const Color(0xff213A50), const Color(0xff071930)])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  "assets/image/Ritik pic.jpeg",
                  width: 150,
                  height: 150,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Ritik Kumar",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "5 star Hackerrank, Top 3 Ranking in GeeksforGeeks in Our university ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "Flutter Developer, Web Developer, Wordpress Developer, Open Source Contributer  ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "C++ || Python || HTML || CSS || Javascript || Flutter(Dart) || Data Structure & Algorithm",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "You can check out my profile of GeeksforGeeks and Hackerank by clicking below ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    _launchURL(
                        "https://auth.geeksforgeeks.org/user/ritikkumar2742/");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(width: 2, color: Colors.white))),
                    // padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      " GeeksforGeeks ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    _launchURL("https://www.hackerrank.com/ritikkumar2742");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(width: 2, color: Colors.white))),
                    child: Text(
                      " Hackerrank ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Call me on 6266916349 or mail me at ritikkumar2742@gmail.com",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        _launchURL("https://github.com/Ritik609");
                      },
                      child: Image.asset(
                        "assets/image/github.png",
                        width: 25,
                        height: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        _launchURL(
                            "https://www.linkedin.com/in/ritik-kumar-14a9951ab/");
                      },
                      child: Image.asset("assets/image/linkedin.png",
                          width: 30, height: 30, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        _launchURL(
                            "https://www.facebook.com/profile.php?id=100010708514432");
                      },
                      child: Image.asset(
                        "assets/image/facebook.png",
                        width: 25,
                        height: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    _launchURL(
                        "https://docs.google.com/document/d/1E4cYO196h4xFxe0VaMLBNAieTrZz512573V86NyAKbg/edit");
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(colors: [
                          const Color(0xffA2834D),
                          const Color(0xffBC9A5F)
                        ])),
                    child: Text(
                      "Download My Resume",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
