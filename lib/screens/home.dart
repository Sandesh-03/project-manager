import 'dart:ui';

import 'package:afourthon/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Projectdetails.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kLogTColour,
          centerTitle: true,
          title: const Text(
            "Projects",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            )
          ],
        ),
        body: SafeArea(
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemCount: 16,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          (context),
                          CupertinoPageRoute(
                              builder: (context) => const ProDetails()));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.all(8),

                      child: Stack(
                        children: [
                          BackdropFilter(
                              filter: ImageFilter.blur(
                            sigmaX: 5,
                                sigmaY: 5,
                          )),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Colors.white.withOpacity(0.5),
                                      kLogTColour.withOpacity(0.2),
                                    ])),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                children: const [
                                  Text(
                                    'Projrct name',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.black,
                                  ),
                                  Text(
                                    "A project is any undertaking, carried out individually or collaboratively and possibly involving research or design, that is carefully planned to achieve a particular goal",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                    maxLines: 6,
                                    overflow: TextOverflow.ellipsis,

                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                })),
      ),
    );
  }
}
