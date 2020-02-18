import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayScreen extends StatefulWidget {
  @override
  _PlayScreenState createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            color: Colors.white,
          ),
          Container(
              height: 650,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30))),
              child: Container(
                //alignment: Alignment.topLeft,
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 100),
                          child: Container(
                            child: Text(
                              "Katy Perry",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                        Container(
                          //padding: EdgeInsets.only(left: 100, right: 0),
                          //alignment: Alignment.centerRight,
                          child: IconButton(
                            icon: Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
