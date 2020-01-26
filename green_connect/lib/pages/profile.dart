import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ClipPath(
            child: Container(
              color: Colors.green.withOpacity(0.8),
            ),
            clipper: getClipper(),
          ),
          Positioned(
            width: 350,
            top: MediaQuery.of(context).size.height/5,
            left: MediaQuery.of(context).size.width/12,
            child: Column(
              children: <Widget>[
                Container(
                  width: 180,
                  height: 190,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      boxShadow:[ BoxShadow(

                          blurRadius: 7.0,
                          color: Colors.black
                      )],
                      image: DecorationImage(

                        image: AssetImage(
                          "assets/images/img9.png",),

                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(95))
                  ),
                ),
                SizedBox(height: 20,),
                Text("Tim Grey",
                  style: TextStyle(
                      fontFamily: 'MonteSerrat',
                      fontSize: 24,
                      fontWeight: FontWeight.bold

                  ),),

               ListTile(
                 title: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[

                     Icon(Icons.verified_user,color: Colors.blue,),
                     Text("Verified User",
                       style: TextStyle(
                           fontFamily: 'MonteSerrat',
                           fontSize: 15,
                           fontStyle: FontStyle.italic

                       ),),
                   ],
                 ),

               ),
                Text("@MEC",
                style:     TextStyle(
                    fontFamily: 'MonteSerrat',
                    fontSize: 18,
                   fontWeight: FontWeight.w800

                ),),


                Container(

                  height: 130,
                  width: 150,
                  decoration:  BoxDecoration(

                    image: DecorationImage(

                      image: AssetImage(
                          "assets/images/img8.png",),

                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0)),
                  ),
                ),

SizedBox(height: 10,),
                Container(

                  height: 40,
                  width: 100,
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    shadowColor: Colors.redAccent,
                    color: Colors.red,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: (){

                      },
                      child: Center(
                        child: Text("Log out",
                            style:TextStyle(color: Colors.white,fontFamily:'MonteSerrat',fontSize: 18)),
                      ),
                    ),
                  ),
                )



              ],
            ),
          )
        ],
      ),

    );
  }
}


class getClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height/1.9);
    path.lineTo(size.width + 125, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {

    return true;
  }

}