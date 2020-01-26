import 'package:flutter/material.dart';
import 'package:green_connect/pages/home_page.dart';

class Events extends StatefulWidget {
  final BottomNavigation bottomNavigation;

  const Events({Key key, this.bottomNavigation}) : super(key: key);

  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index){
            return Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Text("${DateTime.now().day} Jan, ${DateTime.now().year}",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                    ),),
                  ),

            Card(
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
           "assets/images/img2.jpg"),
            fit: BoxFit.fill,
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
            Colors.black.withOpacity(0.6),
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
          "Sunburn Goa",
            style: TextStyle(
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.bold),
            ),
            Text(
     "New Year Eve" ,
            style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            ),
            )
            ],
            ),

            ), ))), 
                Padding(
                  padding: const EdgeInsets.only(left:5.0, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height * .04,
                        width :MediaQuery.of(context).size.width / 2 - 10,
                        alignment: Alignment.center,
                        decoration:BoxDecoration(
                          color: Colors.green


            ),
                          child: Text("Book Tickets",textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                          ),)

                      ),

                      Container(
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height * .04,
                          width :MediaQuery.of(context).size.width / 2 - 10,
                          decoration:BoxDecoration(
                              color: Colors.blueGrey

                          ),


                          child: Text("More Info",textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                            ),)

                      )
                    ],
                  ),
                )],
              ),
            );
          }),
      ),
    );
  }
}
