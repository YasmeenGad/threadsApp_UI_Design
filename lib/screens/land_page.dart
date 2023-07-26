import 'package:flutter/material.dart';

import '../app_images.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(children: [
        Image.asset(
          Assets.Img1,
          height: height * 0.75,
          width: width,
          fit: BoxFit.cover,
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed("navigationScreen");
          },
          child: Container(
            padding: EdgeInsets.all(19),
            height: 78,
            width: 380,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Log In With Instagram",
                          style: TextStyle(color: Colors.black54)),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Text("Zuck",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            Assets.Img2,
                            height: 13,
                            width: 13,
                          ),
                        ],
                      )
                    ],
                  ),
                  Image.asset(Assets.Img3)
                ]),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Center(
          child:
              Text("Switch Account", style: TextStyle(color: Colors.black38)),
        )
      ]),
    );
  }
}
