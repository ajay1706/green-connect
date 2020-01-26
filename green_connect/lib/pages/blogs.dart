import 'package:flutter/material.dart';
import 'package:green_connect/pages/chosen_blog_page.dart';
import 'package:green_connect/pages/home_page.dart';

class Blogs extends StatefulWidget {
  final BottomNavigation bottomNavigation;

  const Blogs({Key key, this.bottomNavigation}) : super(key: key);

  @override
  _BlogsState createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ChosenBlogPage()
                ));
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.25,
                child: Card(
                    elevation: 0,

                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 1.0, color: Colors.grey.withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height * 0.20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/img1.jpg'),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(15.0)
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        Wrap(
                          children: <Widget>[
                            Text(
                              "How to start learning Design ? ",
                              maxLines: 2,
                              softWrap: true,
                              style: TextStyle(fontSize: 18,
                                  color: Colors.black,
                              fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    )),
              ),
            );
          },
        ),
      ),
    );
  }
}
