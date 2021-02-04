import 'package:flutter/material.dart';
import 'Widgets.dart';
import 'MainPage.dart';
import 'FourthPage.dart';
import 'ThirdPage.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xff2657ce),
        title: Text("WellBaked Tech"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          children: <Widget>[
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Icon(Icons.accessibility),
                  height: 10,
                ),
                Container(
                  child: Icon(Icons.account_balance),
                  height: 10,
                ),
              ],
            )),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.subscriptions,
                        color: Color(0xff2657ce).withOpacity(0.5),
                        size: 40,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (_, __, ___) => MainPage(),
                            transitionDuration: Duration(seconds: 0),
                          ),
                        );
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.play_circle_filled,
                        color: Color(0xff2657ce),
                        size: 40,
                      ),
                      onPressed: () {}),
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
                    },
                  ),
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
            ),
          ],
        ),
      ),
    );
  }
}
