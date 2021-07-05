import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ftest/Utils/sizing.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final textColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                    color: Colors.teal[900],
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "My Profile",
                          style: TextStyle(
                              color: textColor,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        Image.asset(
                          "images/circle-menu.png",
                          height: 40,
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(
                      height: Sizing.yMargin(context, 2.8),
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.yellowAccent[700],
                          child: Icon(
                            Icons.person,
                            color: Colors.green,
                            size: 50,
                          ),
                        ),
                        SizedBox(
                          width: Sizing.xMargin(context, 5),
                        ),
                        Wrap(
                          direction: Axis.vertical,
                          children: [
                            Text(
                              "Bianca Cooper",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: textColor,
                                  fontSize: Sizing.textSize(context, 7)),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "09061227197",
                              style: TextStyle(
                                  color: textColor,
                                  fontSize: Sizing.textSize(context, 4.24)),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Bianca@gmail.com",
                              style: TextStyle(
                                  color: textColor,
                                  fontSize: Sizing.textSize(context, 4.24)),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: Sizing.yMargin(context, 10),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 30,
                              //left: 60,
                              child: Container(
                                height: Sizing.yMargin(context, 5),
                                decoration: BoxDecoration(
                                    color: Colors.green[800],
                                    borderRadius: BorderRadius.circular(10)),
                              )),
                          Positioned(
                              top: 70,
                              //   left: 90,
                              child: Container(
                                height: Sizing.yMargin(context, 5),
                                decoration: BoxDecoration(
                                    color: Colors.yellow[800],
                                    borderRadius: BorderRadius.circular(10)),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: Sizing.yMargin(context, 5),
              ),
              Tile(
                headIcon: Icons.person,
                title: "Personal",
              ),
              Tile(
                headIcon: Icons.lock,
                title: "Privacy and Security",
              ),
              Tile(
                  headIcon: CupertinoIcons.gift_fill,
                  title: "Offers and Rewards"),
              Tile(
                headIcon: Icons.help_rounded,
                title: 'Help',
              ),
              Tile(
                headIcon: Icons.logout,
                title: "Logout",
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final IconData? headIcon;
  final String? title;
  const Tile({
    this.headIcon,
    this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        headIcon,
        size: 30,
        color: Colors.green,
      ),
      title: Text(
        "$title",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: Icon(
        Icons.chevron_right,
        color: Colors.grey,
      ),
    );
  }
}
