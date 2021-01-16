import 'package:flutter/material.dart';
import 'MainPage.dart';

final imagesList = [
  "assets/images/newyork.jpg",
  "assets/images/capetown.jpg",
  "assets/images/switzerland.jpg",
];

final colorList = [
  Colors.redAccent.shade100,
  Colors.blueAccent.shade100,
  Colors.amber.shade50,
];

class CityExplorerPage extends StatefulWidget {
  @override
  _CityExplorerPageState createState() => _CityExplorerPageState();
}

class _CityExplorerPageState extends State<CityExplorerPage> {
  int currentPage = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: currentPage,
      keepPage: false,
      viewportFraction: 0.8,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorList[currentPage],
        elevation: 0,
        leading: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color(0xffe1eaff),
          ),
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => MainPage(),
                  transitionDuration: Duration(seconds: 0),
                ),
              );
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xff2657ce),
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            color: colorList[currentPage],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 400.0,
                child: PageView.builder(
                  itemBuilder: (context, index) {
                    return itemBuilder(index);
                  },
                  controller: _pageController,
                  pageSnapping: true,
                  onPageChanged: _onPageChanged,
                  itemCount: 3,
                  physics: ClampingScrollPhysics(),
                ),
              ),
              _detailsBuilder(currentPage),
            ],
          )
        ],
      ),
    );
  }

  Widget _detailsBuilder(index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.5)).clamp(0.0, 1.0);
        }

        return Expanded(
          child: Transform.translate(
            offset: Offset(0, 100 + (-value * 100)),
            child: Opacity(
              opacity: value,
              child: Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: 50,
                      height: 50,
                    ),
                    RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: const EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              // Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        ),
                        child: Container(
                          constraints: const BoxConstraints(
                            maxHeight: 50.0,
                            maxWidth: 200.0,
                            //minWidth: 36.0,
                            //minHeight: 36.0
                          ), // min sizes for Material buttons
                          alignment: Alignment.center,
                          child: const Text(
                            'Join Pro',
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget itemBuilder(index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.5)).clamp(0.0, 1.0);
          return Align(
            alignment: Alignment.center,
            child: Container(
              margin: const EdgeInsets.only(
                top: 40,
                left: 20.0,
                right: 20.0,
              ),
              height: Curves.easeIn.transform(value) * 400,
              child: child,
            ),
          );
        } else {
          return Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 10.0),
                height:
                    Curves.easeIn.transform(index == 0 ? value : value * 0.5) *
                        400,
                child: child,
              ));
        }
      },
      child: Material(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              top: 10, left: 10.0, right: 10.0, bottom: 10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
              bottomLeft: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0),
            ),
            child: Image.asset(
              imagesList[index],
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),
    );
  }

  _onPageChanged(int index) {
    setState(() {
      print(index);
      currentPage = index;
    });
  }
}

