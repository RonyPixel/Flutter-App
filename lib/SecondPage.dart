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
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/exploreBG.png'),
                fit: BoxFit.cover)),
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          children: <Widget>[
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 200,
                  height: 40,
                  child: FlatButton(
                    color: Colors.transparent,
                    textColor: Color(0xff2657ce),
                    padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.add_to_photos_rounded),
                        Text('Add New Course'),
                      ],
                    ),
                    // splashColor: Colors.blueAccent,
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (_, __, ___) => MainPage(),
                          transitionDuration: Duration(seconds: 0),
                        ),
                      );
                    },
                  ),
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
