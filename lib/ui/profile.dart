import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                            child: Row(
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.volume_up,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {});
                                  },
                                ),
                                Spacer(),
                                Icon(
                                  Icons.ac_unit,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
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
                                      radius: 45,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                        minRadius: 20,
                                        backgroundImage:
                                            AssetImage('assets/images/a1.jpg'),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Louis Saville',
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Young and passionate rider',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Row(
                              children: [
                                Icon(Icons.backpack),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Produbicky kraj',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
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
                                      image: AssetImage('assets/images/a2.jpg'),
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
                          padding:
                              EdgeInsets.symmetric(horizontal: 50, vertical: 5),
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
                                      image: AssetImage('assets/images/a2.jpg'),
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
                          padding:
                              EdgeInsets.symmetric(horizontal: 50, vertical: 5),
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
        ));
  }
}
