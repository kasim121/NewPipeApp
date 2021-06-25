import 'package:flutter/material.dart';
import 'package:newpipe/Widget/myDrawer.dart';
import 'package:newpipe/auth/bokmarks.dart';
import 'package:newpipe/auth/subscription.dart';
import 'package:newpipe/auth/trending.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text("Trending"),
          flexibleSpace: Container(
            decoration: BoxDecoration(color: Colors.red),
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.whatshot_rounded,
                  color: Colors.white,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.live_tv_rounded,
                  color: Colors.white60,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.bookmark,
                  color: Colors.white,
                ),
              ),
            ],
            indicatorColor: Colors.white,
            indicatorWeight: 3.0,
          ),
        ),
        body: TabBarView(
          children: [Trending(), Subscription(), BookMarks()],
        ),
      ),
    );
  }
}
