import 'package:flutter/material.dart';
import 'package:grossery/custom_selling.dart';
import 'custom_category.dart';

void main() {
  runApp(Grossery());
}

class Grossery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GrosseryWelcome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GrosseryWelcome extends StatefulWidget {
  const GrosseryWelcome({Key? key}) : super(key: key);

  @override
  _GrosseryWelcomeState createState() => _GrosseryWelcomeState();
}

class _GrosseryWelcomeState extends State<GrosseryWelcome> {
  final Color? color = Color(0xff12BA6C);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  left: 20,
                ),
                child: Text(
                  "Hii, Den!",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  left: 250,
                ),
                child: Stack(
                  children: [
                    Icon(
                      Icons.notifications_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    Positioned(
                      left: 15,
                      child: Container(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "2",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: color,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 6.0,
                  left: 20,
                ),
                child: Text(
                  "What would you buy today?",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 120,
              width: 380,
              decoration: BoxDecoration(
                color: color!.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 60,
                          width: 220,
                          child: Text(
                            "Enjoy the special offer up to 60%",
                            style: TextStyle(
                              color: color,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Text(
                          "at 15-25 March 2021",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  bottom: 20,
                ),
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 225,
                  bottom: 20,
                  right: 20,
                ),
                child: Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                CustomCategory(
                  color: Colors.red[900],
                  name: "Fruit",
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYPSYKRjH_xwWELZQ9u2L_XCQCkYKdG4I31Q&usqp=CAU",
                ),
                CustomCategory(
                  color: Colors.yellow[900],
                  name: "Bread",
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWOIeJBrrjTN65qTs18EEaAsTZVcUeJrrmQw&usqp=CAU",
                ),
                CustomCategory(
                  color: Colors.green[900],
                  name: "Veggie",
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnVF2Urd_3UuSTvE5kxpAvc-Akk0NYadILfg&usqp=CAU",
                ),
                CustomCategory(
                  color: Colors.yellow,
                  name: "Dairy",
                  url:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ51R-K4jMcBHylnKMwm_TMwVKGn40MsAknUw&usqp=CAU",
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  bottom: 20,
                ),
                child: Text(
                  "Best Selling",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 215,
                  bottom: 20,
                  right: 20,
                ),
                child: Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SellingCard(
            url:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSs00_6MDIJ0A2YyDs4zoVLFEpSd6IY9V2wiw&usqp=CAU",
            itemName: "Orange fresh juice",
            description: "ipsum designs.book.even to thought to words,.",
            price1: "60.0",
            price2: "50.0",
          ),
        ],
      ),
    );
  }
}
