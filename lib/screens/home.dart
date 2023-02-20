import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:proj/screens/weathers.dart';

import '../components/widgets.dart';
import '../controller/usercontroller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // userdata('Karachi');
    List citylist = ['Karachi', 'hyderabad', 'quetta', 'Lahore', 'Islamabad'];

    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        backgroundColor: Color.fromARGB(255, 52, 30, 133),
        buttonBackgroundColor: Color.fromARGB(255, 85, 53, 204),
        color: Color(0xFF48319D),
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Weathers(),
                ));
          }
          print(index);
        },
        items: const [
          Icon(
            Icons.pin_drop,
            color: Colors.white,
            size: 30,
          ),
          Icon(
            Icons.add_circle_outline,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.menu_sharp,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
      body: SingleChildScrollView(
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
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    child: Tabwidget(),
                  ),
                ),
                Positioned(
                  top: 80,
                  left: MediaQuery.of(context).size.width * 0.38,
                  child: Row(
                    children: [
                      Container(
                        child: FutureBuilder(
                          future: userdata('Karachi'),
                          builder: (context, AsyncSnapshot snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.done) {
                              var jsonData = snapshot.data;
                              var name = jsonData['data'][0]['city_name'];
                              var type =
                                  jsonData['data'][0]['weather']['description'];
                              var temp = jsonData['data'][0]['app_temp'];
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "${name}",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  ),
                                  Text(
                                    "${temp}°",
                                    style: TextStyle(
                                        fontSize: 50, color: Colors.white),
                                  ),
                                  Text(
                                    "${type}",
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.grey),
                                  ),
                                ],
                              );
                            } else {
                              return CircularProgressIndicator();
                            }
                          },
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

class Cloudynow extends StatelessWidget {
  const Cloudynow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 5, 0),
      child: Container(
        height: 165,
        width: 75,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 85, 53, 204),
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
