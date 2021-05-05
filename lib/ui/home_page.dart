import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 3;
  GlobalKey _botton = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _botton,
          index: 2,
          height: 60.0,
          items: [
            Icon(
              Icons.videogame_asset,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.mail,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.perm_camera_mic,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.perm_camera_mic,
              size: 30,
              color: Colors.white,
            ),
          ],
          color: Colors.green,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
        ),
        body: Scaffold(
          backgroundColor: Colors.green,
          body: DefaultTabController(
            length: 2,
            child: NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverList(
                    delegate: SliverChildListDelegate([
                      Container(
                        color: Colors.green,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Row(
                                children: [
                                  Container(
                                    child: Material(
                                      elevation: 10.0,
                                      shape: CircleBorder(),
                                      clipBehavior: Clip.hardEdge,
                                      color: Colors.transparent,
                                      child: CircleAvatar(
                                        radius: 25,
                                        backgroundColor: Colors.white,
                                        child: CircleAvatar(
                                          minRadius: 20,
                                          backgroundImage: AssetImage(
                                              'assets/images/a1.jpg'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text(
                                    'Activity',
                                    style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(Icons.ac_unit)
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        child: Material(
                          color: Colors.grey.withOpacity(0.0),
                          child: Theme(
                            data: ThemeData(
                              highlightColor: Colors.transparent,
                              splashColor: Colors.transparent,
                            ),
                            child: TabBar(
                              enableFeedback: false,
                              labelStyle: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1,
                              ),
                              unselectedLabelColor: Colors.white,
                              indicator: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  color: Colors.white.withOpacity(0.0)),
                              labelColor: Colors.black,
                              indicatorColor: CupertinoColors.systemYellow,
                              indicatorWeight: 5,
                              tabs: [
                                Tab(
                                  text: 'ALL',
                                ),
                                Tab(
                                  text: 'RBSC',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ];
              },
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Stack(children: [
                                Container(
                                  decoration: BoxDecoration(
                                      image: new DecorationImage(
                                        fit: BoxFit.fill,
                                        image:
                                            AssetImage('assets/images/a2.jpg'),
                                      ),
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(90)),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 50, vertical: 5),
                                  width: 90,
                                  height: 200,
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Container(
                                  child: Material(
                                    elevation: 10.0,
                                    shape: CircleBorder(),
                                    clipBehavior: Clip.hardEdge,
                                    color: Colors.transparent,
                                    child: CircleAvatar(
                                      radius: 45,
                                      backgroundColor: Colors.green,
                                      child: CircleAvatar(
                                        minRadius: 40,
                                        maxRadius: 40,
                                        backgroundImage:
                                            AssetImage('assets/images/a1.jpg'),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                              SizedBox(
                                width: 30,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('6h ago'),
                                  Text('Leonid Arestov'),
                                  Row(
                                    children: [
                                      Text('cycleg'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Icon(Icons.ac_unit),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Icon(Icons.thumb_up_off_alt),
                              Text('1'),
                              Icon(Icons.chat_bubble_outline),
                              Text('0'),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(flex: 1, child: Text('')),
                                  Expanded(child: Text('36,6 km')),
                                  Expanded(child: Text('36 km/h')),
                                  Expanded(child: Text('54 min')),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(flex: 1, child: Text('')),
                                  Expanded(child: Text('DISTANCE')),
                                  Expanded(child: Text('AVERAGE SPEED')),
                                  Expanded(child: Text('RIDE TIME')),
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                            child: Divider(
                              indent: 20,
                              endIndent: 20,
                              thickness: 2,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                child: Material(
                                  elevation: 10.0,
                                  shape: CircleBorder(),
                                  clipBehavior: Clip.hardEdge,
                                  color: Colors.transparent,
                                  child: CircleAvatar(
                                    radius: 45,
                                    backgroundColor: Colors.green,
                                    child: CircleAvatar(
                                      minRadius: 40,
                                      maxRadius: 40,
                                      backgroundImage:
                                          AssetImage('assets/images/a1.jpg'),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('6h ago'),
                                  Text('Leonid Arestov'),
                                  Row(
                                    children: [
                                      Text('cycleg'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Icon(Icons.line_style),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Icon(Icons.thumb_up_off_alt),
                              Text('1'),
                              Icon(Icons.chat_bubble_outline),
                              Text('0'),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/images/a2.jpg'),
                                ),
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(90)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 5),
                            width: double.infinity,
                            height: 100,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                            child: Divider(
                              indent: 20,
                              endIndent: 20,
                              thickness: 2,
                            ),
                          ),
                          Row(
                            children: [
                              Stack(children: [
                                Container(
                                  decoration: BoxDecoration(
                                      image: new DecorationImage(
                                        fit: BoxFit.fill,
                                        image:
                                            AssetImage('assets/images/a2.jpg'),
                                      ),
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(90)),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 50, vertical: 5),
                                  width: 90,
                                  height: 200,
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Container(
                                  child: Material(
                                    elevation: 10.0,
                                    shape: CircleBorder(),
                                    clipBehavior: Clip.hardEdge,
                                    color: Colors.transparent,
                                    child: CircleAvatar(
                                      radius: 45,
                                      backgroundColor: Colors.green,
                                      child: CircleAvatar(
                                        minRadius: 40,
                                        maxRadius: 40,
                                        backgroundImage:
                                            AssetImage('assets/images/a1.jpg'),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                              SizedBox(
                                width: 30,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('6h ago'),
                                  Text('Leonid Arestov'),
                                  Row(
                                    children: [
                                      Text('cycleg'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Icon(Icons.ac_unit),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Icon(Icons.thumb_up_off_alt),
                              Text('1'),
                              Icon(Icons.chat_bubble_outline),
                              Text('0'),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(flex: 1, child: Text('')),
                                  Expanded(child: Text('36,6 km')),
                                  Expanded(child: Text('36 km/h')),
                                  Expanded(child: Text('54 min')),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(flex: 1, child: Text('')),
                                  Expanded(child: Text('DISTANCE')),
                                  Expanded(child: Text('AVERAGE SPEED')),
                                  Expanded(child: Text('RIDE TIME')),
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                            child: Divider(
                              indent: 20,
                              endIndent: 20,
                              thickness: 2,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                child: Material(
                                  elevation: 10.0,
                                  shape: CircleBorder(),
                                  clipBehavior: Clip.hardEdge,
                                  color: Colors.transparent,
                                  child: CircleAvatar(
                                    radius: 45,
                                    backgroundColor: Colors.green,
                                    child: CircleAvatar(
                                      minRadius: 40,
                                      maxRadius: 40,
                                      backgroundImage:
                                          AssetImage('assets/images/a1.jpg'),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('6h ago'),
                                  Text('Leonid Arestov'),
                                  Row(
                                    children: [
                                      Text('cycleg'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Icon(Icons.line_style),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Icon(Icons.thumb_up_off_alt),
                              Text('1'),
                              Icon(Icons.chat_bubble_outline),
                              Text('0'),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/images/a2.jpg'),
                                ),
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(90)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 5),
                            width: double.infinity,
                            height: 100,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
