import 'package:flutter/material.dart';
import 'city_explorer_page.dart';

class FourthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CityExplorerPage(),
    );
  }
}
