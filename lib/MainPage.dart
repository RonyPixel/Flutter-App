import 'package:flutter/material.dart';
import 'package:onlinelearning/CoursePage.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'Widgets.dart';
import 'SecondPage.dart';
import 'ThirdPage.dart';
import 'FourthPage.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainPage(),
      routes: {
        '/coursePage': (context) => CoursePage(),
      },
    );
  }
}

class mainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f6fd),
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xff2657ce),
        title: Text('WellBaked Tech'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 180.0,
              width: 400.0,
              child: Carousel(
                boxFit: BoxFit.cover,
                autoplay: true,
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: Duration(milliseconds: 700),
                dotSize: 4.0,
                dotColor: Colors.red[200],
                dotBgColor: Colors.transparent,
                borderRadius: true,
                showIndicator: true,
                indicatorBgPadding: 7.0,
                images: [
                  AssetImage('assets/image/1.jpg'),
                  AssetImage('assets/image/2.jpg'),
                  AssetImage('assets/image/3.jpg'),
                  AssetImage('assets/image/4.jpg'),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          courseWidget('Multimedia', 'Animation Course', 'img1',
                              Color(0xffff6a65), Color(0xffff5954)),
                          SizedBox(
                            height: 20,
                          ),
                          courseWidget(
                              'Social Media',
                              'Social Media Monitoring',
                              'img2',
                              Color(0xffe9eefa),
                              Colors.white),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          courseWidget('Coding', 'Python for everybody', 'img3',
                              Color(0xffe9eefa), Colors.white),
                          SizedBox(
                            height: 20,
                          ),
                          courseWidget('Graphic Design', 'Basics of Design',
                              'img4', Color(0xffbdcddfa), Color(0xffcedaff)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.subscriptions,
                        color: Color(0xff2657ce),
                        size: 40,
                      ),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(
                        Icons.play_circle_filled,
                        color: Color(0xff2657ce).withOpacity(0.5),
                        size: 40,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (_, __, ___) => SecondRoute(),
                            transitionDuration: Duration(seconds: 0),
                          ),
                        );
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.account_circle,
                        color: Color(0xff2657ce).withOpacity(0.5),
                        size: 40,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (_, __, ___) => ThirdRoute(),
                            transitionDuration: Duration(seconds: 0),
                          ),
                        );
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.attach_money,
                        color: Color(0xff2657ce).withOpacity(0.5),
                        size: 40,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (_, __, ___) => FourthRoute(),
                            transitionDuration: Duration(seconds: 0),
                          ),
                        );
                      }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container courseWidget(String category, String title, String img,
      Color categoryColor, Color bgColor) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: InkWell(
        onTap: () {
          openCoursePage('$img', '$title');
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: categoryColor,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Text(
                '$category',
                style: TextStyle(
                    color: (categoryColor == Color(0xffe9eefa)
                        ? Color(0xff2657ce)
                        : Colors.white)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '$title',
              style: TextStyle(
                color: (bgColor == Color(0xffff5954))
                    ? Colors.white
                    : Colors.black,
                fontSize: 20,
                height: 1,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Container(
                  height: 5,
                  width: 100,
                  color: (bgColor == Color(0xffff5954))
                      ? Colors.red
                      : Color(0xff2657ce),
                ),
                Expanded(
                  child: Container(
                    height: 5,
                    color: (bgColor == Color(0xffff5954))
                        ? Colors.white.withOpacity(0.5)
                        : Color(0xff2657ce).withOpacity(0.5),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Hero(
              tag: '$img',
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/image/$img.png'),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }

  void openCoursePage(String img, String title) {
    Navigator.pushNamed(context, '/coursePage',
        arguments: {'img': '$img', 'title': '$title'});
  }
}
