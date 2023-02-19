import 'package:flutter/material.dart';

import '../controller/usercontroller.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    userdata();

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 1,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Image.asset(
                    "assets/images/background.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  left: 45,
                  bottom: MediaQuery.of(context).size.height * 0.23,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.45,
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Image.asset(
                      "assets/images/house.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width * 1,
                        decoration: const BoxDecoration(
                            gradient: RadialGradient(
                              colors: [
                                Color(0xff427BD1),
                                // Color(0xff7758D1),
                                Color.fromARGB(255, 52, 30, 133),
                              ],
                            ),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40),
                              topLeft: Radius.circular(40),
                            )),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Cloudy(),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 10, 5, 0),
                                child: Container(
                                  height: 165,
                                  width: 75,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF48319D),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(255, 42, 24, 107),
                                        blurRadius: 20.0, // soften the shadow
                                        spreadRadius: 5.0, //extend the shadow
                                        offset: Offset(
                                          4.0, // Move to right 10  horizontally
                                          4.0, // Move to bottom 10 Vertically
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(40),
                                      topLeft: Radius.circular(40),
                                      bottomLeft: Radius.circular(40),
                                      bottomRight: Radius.circular(40),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Text(
                                              "Now",
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 23),
                                            child: Container(
                                              child: Image.asset(
                                                  "assets/images/wether.png"),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.only(top: 13),
                                            child: Text(
                                              "19°",
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Cloudy(),
                              Cloudy(),
                              Cloudy(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 100,
                  left: MediaQuery.of(context).size.width * 0.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          "19°",
                          style: TextStyle(fontSize: 50, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Cloudy extends StatelessWidget {
  const Cloudy({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 5, 0),
      child: Container(
        height: 165,
        width: 75,
        decoration: const BoxDecoration(
          color: Color(0xFF48319D),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 42, 24, 107),
              blurRadius: 20.0, // soften the shadow
              spreadRadius: 5.0, //extend the shadow
              offset: Offset(
                4.0, // Move to right 10  horizontally
                4.0, // Move to bottom 10 Vertically
              ),
            )
          ],
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "12 AM",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 23),
                  child: Container(
                    child: Image.asset("assets/images/wether.png"),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 13),
                  child: Text(
                    "19°",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
