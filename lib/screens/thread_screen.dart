import 'package:flutter/material.dart';
import 'package:threads/app_images.dart';

class ThreadScreen extends StatefulWidget {
  const ThreadScreen({super.key});

  @override
  State<ThreadScreen> createState() => _ThreadScreenState();
}

class _ThreadScreenState extends State<ThreadScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(children: [
        Container(
          height: height * 0.8,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Assets.Img4), fit: BoxFit.cover)),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(20),
                height: 250,
                width: 329,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(Assets.Img5),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Mark",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            Assets.Img2,
                            height: 13,
                            width: 13,
                          ),
                        ],
                      ),
                      Image.asset(
                        Assets.Img6,
                        height: 20,
                        width: 20,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 110,
                        child: VerticalDivider(
                          color: Colors.black38,
                          thickness: 2,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("let\'s do this. Welcome to threads.🔥"),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_border,
                                    size: 27,
                                  )),
                              IconButton(
                                onPressed: () {},
                                icon: ImageIcon(
                                  AssetImage(Assets.Img9),
                                  size: 21,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: ImageIcon(
                                  AssetImage(Assets.Img7),
                                  size: 22,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: ImageIcon(
                                  AssetImage(Assets.Img8),
                                  size: 22,
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ]),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text("Via Threads", style: TextStyle(fontWeight: FontWeight.bold))
          ]),
        )
      ]),
    );
  }
}
