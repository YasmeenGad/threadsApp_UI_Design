import 'package:flutter/material.dart';
import 'package:threads/app_images.dart';
import 'package:threads/data/data.dart';
import 'package:threads/data/data_source.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                Assets.Threads,
                height: 35,
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  childCount: ThreadRemoteDataSource().getThread().length,
                  (context, index) {
            final threadList = ThreadRemoteDataSource().getThread()[index];
            return InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("threadScreen");
                },
                child: Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                AssetImage("images/${threadList.profileImage}"),
                          ),
                          title: Row(
                            children: [
                              Text(threadList.name ?? 'name',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              Spacer(),
                              Text(threadList.posted!,
                                  style:
                                      TextStyle(color: Colors.grey.shade500)),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.more_horiz),
                            ],
                          ),
                          subtitle: Text(threadList.description!,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                        ),
                        if (threadList.image != '')
                          Padding(
                            padding: EdgeInsets.only(right: 20, left: 70),
                            child: Container(
                              height: 300,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "images/${threadList.image}"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70),
                          child: Row(
                            children: [
                              Icon(
                                Icons.favorite_border,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.chat_bubble_outline,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.cached,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.send,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 10),
                          height: 50,
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 70),
                            child: Text(
                                "${threadList.replies} replies  ${threadList.likes} likes",
                                style: TextStyle(
                                    color: Colors.grey.shade500,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                          ),
                        )
                      ],
                    ),
                    Positioned(
                        left: 35,
                        top: 63,
                        child: Container(
                          height: 400,
                          width: 3,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(1),
                          ),
                        )),
                    Positioned(
                      right: 288,
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(1),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                                left: 0,
                                top: 10,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                      "images/${threadList.replier}"),
                                  radius: 8,
                                )),
                            Positioned(
                                bottom: 8,
                                right: 8,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                      "images/${threadList.replier2}"),
                                  radius: 6,
                                )),
                          ],
                        ),
                      ),
                    )
                  ],
                ));
          }))
        ],
      )),
    );
  }
}
