import 'package:flutter/material.dart';
import 'package:proj/screens/home.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.5,
                // child: Home(),
              ),
              Tabwidget()
            ]),
      ),
    );
  }
}

class Tabwidget extends StatelessWidget {
  const Tabwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // length of tabs
      initialIndex: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 52, 30, 133),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
            ),
            child: const TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: 'Hourly Forecast'),
                Tab(text: 'Weekly Forecast'),
              ],
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height *
                  0.35, //height of TabBarView
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    Color(0xff427BD1),
                    Color.fromARGB(255, 52, 30, 133),
                  ],
                ),
              ),
              child: TabBarView(children: <Widget>[
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    child: Center(
                      child: Row(
                        children: const [
                          Cloudy(),
                          Cloudynow(),
                          Cloudy(),
                          Cloudy(),
                          Cloudy(),
                          Cloudy(),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: const Center(
                    child: Text('Display Tab 2',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                  ),
                ),
              ]))
        ],
      ),
    );
  }
}
