import 'package:flutter/material.dart';

class ChosenBlogPage extends StatefulWidget {
  @override
  _ChosenBlogPageState createState() => _ChosenBlogPageState();
}

class _ChosenBlogPageState extends State<ChosenBlogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Blog",
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () => Navigator.of(context).pop()),

      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(

            children: <Widget>[
              Text("How to start learning Design ?",
              textAlign: TextAlign.center,
              softWrap: true,

              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.w600
              ),),
    Container(

margin: const EdgeInsets.only( left:  10,right:  10, top: 5),
    height: MediaQuery.of(context).size.height * 0.30,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    image: DecorationImage(
    image: AssetImage('assets/images/img1.jpg'),
    fit: BoxFit.fill,
    ),)),
              Container(

                padding: const EdgeInsets.symmetric(horizontal: 12),

                 child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,

                softWrap: true,
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400
                ),),
              ),


            ],

          ),
        ),
      ),

    );
  }
}
