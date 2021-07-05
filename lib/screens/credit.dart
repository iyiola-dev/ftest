import 'package:flutter/material.dart';
import 'package:ftest/Utils/sizing.dart';

class Credit extends StatelessWidget {
  const Credit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green[900],
                ),
                padding: const EdgeInsets.all(12),
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.transparent,
                            border: Border.all(color: Colors.white)),
                        height: 50,
                        width: 50,
                        child: Center(
                          child: Icon(
                            Icons.chevron_left,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Center(
                          child: Text(
                        "Your Credit Card",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 22),
                      )),
                    ]),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Your Credit Card has been \n successfully added",
                          style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.yellow[600],
                          ),
                          height: 50,
                          width: 50,
                          child: Center(
                            child: Icon(Icons.add, color: Colors.white),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text("Card Settings",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.green),
                title: Text(
                  "Set limit",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                leading: Icon(Icons.lock, color: Colors.green),
                title: Text(
                  "Lock Card",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: Sizing.yMargin(context, 20),
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: Size(100, 50)),
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      "Top up now",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ],
          ),
        ),
      ),
    ));
  }
}
