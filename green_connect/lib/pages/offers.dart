import 'package:flutter/material.dart';

class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green,width: 3)
          ),
          child: Text("OFFERS COMING SOON!",

          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w800
          ),),
        ),
      ),
    );
  }
}
