import 'package:flutter/material.dart';
import 'Widgets.dart';
import 'SecondPage.dart';
import 'MainPage.dart';
import 'FourthPage.dart';

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isButtonPressed = false;
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xff2657ce),
        title: Text("Writer Yard"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 75, left: 20, right: 20),
        child: Column(
          children: <Widget>[
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 115,
                  width: 115,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://thedocspot.com/docspot_mobile/uploads/users/1556257231user.jpeg'),
                      ),
                      Positioned(
                        right: 5,
                        bottom: 0,
                        child: SizedBox(
                            height: 40,
                            width: 40,
                            child: MaterialButton(
                              onPressed: () {},
                              color: Colors.blue,
                              textColor: Colors.white,
                              child: Icon(
                                Icons.camera_alt,
                                size: 24,
                              ),
                              padding: EdgeInsets.all(6),
                              shape: CircleBorder(),
                            )),
                      ),
                    ],
                  ),

                  //borderRadius: BorderRadius.circular(12),
                ),
                SizedBox(
                  width: 20,
                  height: 40,
                ),

                Container(
                    child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Name Here',
                    hintText: 'Enter Name Here',
                  ),
                  autofocus: false,
                )),
                // ),
                SizedBox(
                  width: 20,
                  height: 20,
                ),
                Container(
                    child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Email',
                    hintText: 'Enter Your Email',
                  ),
                  autofocus: false,
                )),
                SizedBox(
                  width: 20,
                  height: 20,
                ),
                RaisedButton(
                    color: Colors.blue,
                    child: const Text('Submit'),
                    onPressed: () {
                      isButtonPressed = !isButtonPressed;
                    })
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
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.account_circle,
                      color: Color(0xff2657ce),
                      size: 40,
                    ),
                    onPressed: () {},
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
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
