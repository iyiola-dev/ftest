import 'package:flutter/material.dart';
import 'package:ftest/Utils/sizing.dart';

class Receipt extends StatelessWidget {
  const Receipt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.teal[900],
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Top Up Receipt",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.symmetric(horizontal: 30),
                height: Sizing.yMargin(context, 65),
                width: Sizing.xMargin(context, 100),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: CircleAvatar(
                        backgroundColor: Colors.teal[900],
                        radius: 45,
                        child: Icon(
                          Icons.check_circle,
                          color: Colors.yellow[700],
                          size: 90,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Center(
                      child: Text(
                        "Top Up Success",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text("Your Top Up has been successful",
                          style: TextStyle(color: Colors.grey)),
                    ),
                    SizedBox(
                      height: 21,
                    ),
                    Center(
                      child: Text("Total Top up",
                          style: TextStyle(color: Colors.grey)),
                    ),
                    SizedBox(height: 21),
                    Center(
                      child: Text(
                        "\$132",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 26),
                      ),
                    ),
                    SizedBox(height: 21),
                    Text(
                      "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "Top up Destination",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8)),
                      child: ListTile(
                        leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6)),
                        ),
                        title: Text(
                          "Wally Virtual Card",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        subtitle: Text(
                          "0.12.281979 .   3.02pm",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.green,
                            minimumSize: Size(100, 50)),
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            "Done",
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text("Top up more money",
                          style: TextStyle(color: Colors.green[800])),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
