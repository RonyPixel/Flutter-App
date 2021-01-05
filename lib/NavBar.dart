import 'package:flutter/material.dart';

// class MyAppp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyStatefulWidget(),
//     );
//   }
// }

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  //int _selectedIndex = 0;
//   // static const TextStyle optionStyle =
//   //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   // static const List<Widget> _widgetOptions = <Widget>[
//   //   Text(
//   //     'Index 0: Explore',
//   //     style: optionStyle,
//   //   ),
//   //   Text(
//   //     'Index 1: My Courses',
//   //     style: optionStyle,
//   //   ),
//   //   Text(
//   //     'Index 2: Materials',
//   //     style: optionStyle,
//   //   ),
//   //   Text(
//   //     'Index 3: VIP members ',
//   //     style: optionStyle,
//   //   ),
//   // ];

//  void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'My Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Materials',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Premium',
          ),
        ],
        // currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
      ),
    );
  }
}

// // Container(
// //   padding: EdgeInsets.all(10),
// //   child: Row(
// //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //     children: <Widget>[
// //       IconButton(
// //           icon: Icon(
// //             Icons.subscriptions,
// //             color: Color(0xff2657ce),
// //             size: 40,
// //           ),
// //           onPressed: () {
// //             setState(() {
// //               Color(0xff2657ce);
// //             });
// //           }),
// //       IconButton(
// //           icon: Icon(
// //             Icons.play_circle_filled,
// //             color: Color(0xff2657ce).withOpacity(0.5),
// //             size: 40,
// //           ),
// //           onPressed: () {
// //             Navigator.push(
// //               context,
// //               MaterialPageRoute(
// //                   builder: (context) => SecondRoute()),
// //             );
// //           }),
// //       IconButton(
// //           icon: Icon(
// //             Icons.account_circle,
// //             color: Color(0xff2657ce).withOpacity(0.5),
// //             size: 40,
// //           ),
// //           onPressed: () {
// //             Navigator.push(
// //               context,
// //               MaterialPageRoute(
// //                   builder: (context) => SecondRoute()),
// //             );
// //           }),
// //       IconButton(
// //           icon: Icon(
// //             Icons.attach_money,
// //             color: Color(0xff2657ce).withOpacity(0.5),
// //             size: 40,
// //           ),
// //           onPressed: () {
// //             setState(() {
// //               Color(0xff2657ce);
// //             });
// //           }),
// //     ],
// //   ),
// // )
