import 'package:flutter/material.dart';
import 'package:gradient_outline/tabs/all.dart';
import 'tabs/About Devops.dart';
import 'tabs/Backend development.dart';
import 'tabs/New to you.dart';
import 'tabs/Types of Testing.dart';
import 'tabs/Types of databases.dart';
import 'tabs/flutter development.dart';
import 'package:gradient_outline/tab_text.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(
      primaryColor: Color(0xffffffff),
    ),
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(
              height: 30,
              width: 30,
              child: Image.asset(
                'assets/youtube.png',
                height: 100,
                width: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'YouTube',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.cast_connected_outlined,
                    color: Colors.black54,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_none_sharp,
                    color: Colors.black54,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.black54,
                  )),
            ],
          )
        ],
        bottom: TabBar(
            indicator: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(80, 164, 214, 240),
                  Color.fromARGB(122, 231, 172, 240),
                ],
                    begin: Alignment.topLeft,
                    end: Alignment.centerRight
                ),
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                width: 2.0,
                color: Color.fromARGB(45, 140, 45, 195),
                style: BorderStyle.solid,
              ),
            ),
           indicatorColor: Colors.black,
            labelColor: Colors.black,
            labelStyle: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelColor: Colors.black,
            unselectedLabelStyle: TextStyle(),
            isScrollable: true,
            controller: _tabController, tabs: const [
          Tab(text: '  All  ' ),
          Tab(text: '  New to you  '),
          Tab(text: '  flutter development  '),
          Tab(text: '  Backend development  '),
          Tab(text: '  Types of databases  '),
          Tab(text: '  About Devops  '),
          Tab(text: '  Types of Testing  '),
        ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          AllTab(),
          NewTOYouTab(),
          FlutterTab(),
          BackendTab(),
          DatabasesTab(),
          DevopsTab(),
          TestingTab()
        ],
      ),
    );
  }
}
