import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:green_connect/pages/blogs.dart';
import 'package:green_connect/pages/events.dart';
import 'package:green_connect/pages/offers.dart';
import 'package:green_connect/pages/profile.dart';

class HomePage extends StatefulWidget {
  final BottomNavigation bottomNavigation;

  const HomePage({Key key, this.bottomNavigation}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with TickerProviderStateMixin<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _currentIndex = 0;

  final _pageOptions = [LandingPage(), Events(), Offers(), Blogs(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawerEdgeDragWidth: 3.0,
      appBar: AppBar(
        title: Text(
          "Green Connect",
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () => _scaffoldKey.currentState.openDrawer()),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
                size: 24,
              ),
              onPressed: (){})
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
//            UserAccountsDrawerHeader(
//                accountName: CircleAvatar(
//                  child: Text("AJ"),
//                ),
//                accountEmail: Text("aj@greenconnect.com")),
            DrawerHeader(
              child: Container(
                  height: 55,
                  child: Row(
                    children: <Widget>[
                      Container(
//                        child: Image.network(userImage, fit: BoxFit.cover,),
                        height: 54,
                        width: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
//                              image: DecorationImage(
//                                image: NetworkImage(""),
//                              ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
//                                subList.name,
                            "Welcome",
                            style: TextStyle(color: Colors.black, fontSize: 19),
                          ),
                          Text(
                            "Tim Grey",
                            style: TextStyle(color: Colors.grey[700]),
                          )
                        ],
                      )
                    ],
                  )),
            ),
            new ListTile(
              contentPadding: EdgeInsets.only(left: 30.0),
              leading: Icon(Icons.credit_card),
              title: new Text(
                "Widhya ID",
                style: new TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
//                setState(() {
//                  _selectedPage = 0;
//                });
              },
            ),
            new ListTile(
              contentPadding: EdgeInsets.only(left: 30.0),
              leading: Icon(Icons.person),
              title: new Text(
                "Profile",
                style: new TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
//                setState(() {
//                  _selectedPage = 1;
//                });
//                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => UserPage(),),);
              },
            ),
            new Divider(),
            new ListTile(
              contentPadding: EdgeInsets.only(left: 30.0),
              leading: Icon(Icons.event),
              title: new Text(
                "Events near me",
                style: new TextStyle(fontSize: 17),
              ),
            ),
            new ListTile(
              contentPadding: EdgeInsets.only(left: 30.0),
              leading: Icon(Icons.local_offer),
              title: new Text(
                "Offers",
                style: new TextStyle(fontSize: 17),
              ),
            ),
            new ListTile(
              contentPadding: EdgeInsets.only(left: 30.0),
              leading: Icon(Icons.restore_page),
              title: new Text(
                "Educational Blogs",
                style: new TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                    builder: (BuildContext context) => SettingsPage(),
//                  ),
//                );
              },
            ),
            new ListTile(
              contentPadding: EdgeInsets.only(left: 30.0),
              leading: Icon(Icons.school),
              title: new Text(
                "Mentorship",
                style: new TextStyle(fontSize: 17),
              ),
            ),
            new Divider(),
            new ListTile(
                contentPadding: EdgeInsets.only(left: 30.0),
                leading: Icon(Icons.settings),
                title: new Text(
                  "Settings",
                  style: new TextStyle(fontSize: 17),
                ),
                onTap: () {
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(
//                      builder: (BuildContext context) => LoginPage(),
//                    ),
//                  );
                }),
          ],
        ),
      ),
      body: _pageOptions[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
//        onTap: onTabTapped, // new
//        currentIndex: , // new

        elevation: 0,

        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: allDestinations.map((BottomNavigation bottomNavigation) {
          return BottomNavigationBarItem(
              icon: Icon(bottomNavigation.icon),
              backgroundColor: bottomNavigation.color,
              title: Text(bottomNavigation.title));
        }).toList(),
      ),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: CarouselSlider(
            height: 250.0,

            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
//                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.circular(8)),
                      child:       Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          elevation: 3,
                          child: Container(
                              height: MediaQuery.of(context).size.height * 0.15,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(

                                  image: AssetImage(
                                      "assets/images/img3.jpg"),
                                  fit: BoxFit.fitHeight,
                                ),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5.0)),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: <Color>[
                                      Colors.black.withOpacity(0.5),
                                      Colors.transparent
                                    ],
                                  ),
                                ),
//              color: Colors.black.withOpacity(0.2),  //Used to make Text on picture more Clear to read
//              alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.end,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "E-SUMMIT",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "24-25th January, 2020" ,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800
                                        ),
                                      )
                                    ],
                                  ),

                                ), ))), );
                },
              );
            }).toList(),
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
          child: Text(
            "Feautred Events",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int i) {
                return Container(

                  margin: const EdgeInsets.only(left: 0.5, right: 4),
                  height: 100,
                  width: 100,
//                  child: Container(
//                    color: Colors.greenAccent,
                 decoration: BoxDecoration(

                  image: DecorationImage(

                  image: AssetImage(
                      "assets/images/img6.jpg"),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.all(
                Radius.circular(5.0)),
                ),

//                  ),

                );
              }),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
          child: Text(
            "Upcoming Events",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int i) {
                return Container(
                  margin: const EdgeInsets.only(left: 0.5, right: 4),
                  height: 100,
                  width: 100,

                  decoration: BoxDecoration(
                    image: DecorationImage(

                      image: AssetImage(
                          "assets/images/img4.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0)),
                  ),
                );
              }),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
          child: Text(
            "Cultural Events",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int i) {
                return Container(
                  margin: const EdgeInsets.only(left: 0.5, right: 4),
                  height: 100,
                  width: 100,

                  decoration: BoxDecoration(
                    image: DecorationImage(

                      image: AssetImage(
                          "assets/images/img2.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}

class BottomNavigation {
  const BottomNavigation(this.title, this.icon, this.color);

  final String title;
  final IconData icon;
  final MaterialColor color;
}

const List<BottomNavigation> allDestinations = <BottomNavigation>[
  BottomNavigation('Home', Icons.home, Colors.teal),
  BottomNavigation('Events', Icons.event, Colors.teal),
  BottomNavigation('Offers', Icons.local_offer, Colors.teal),
  BottomNavigation('Blogs', Icons.pages, Colors.teal),
  BottomNavigation('Profile', Icons.person, Colors.teal)
];
