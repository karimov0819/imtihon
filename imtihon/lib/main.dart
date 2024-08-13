
import 'package:flutter/material.dart';
import 'package:imtihon/bir.dart';
import 'package:lottie/lottie.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: A(),
  ));
}

class A extends StatefulWidget {
  const A({super.key});

  @override
  State<A> createState() => _AState();
}

class _AState extends State<A> {
  TextEditingController input = TextEditingController();

  String m = "";

  void nomvid() {
    setState(() {
      m = input.text;
    });
  }

  List nomlist = [
    "rizoxon/q1.png",
    "rizoxon/q2.png",
    "rizoxon/q3.png",
    "rizoxon/q4.png",
    "rizoxon/q5.png",
    "rizoxon/q6.png",
    "rizoxon/q7.png",
    "rizoxon/q7.png",
    "rizoxon/q8.png",
    "rizoxon/q9.png",
     "rizoxon/q10.png",
    "rizoxon/q11.png",
    "rizoxon/q12.png",
    "rizoxon/q13.png",
    "rizoxon/q14.png",
    "rizoxon/q15.png",
    "rizoxon/q16.png",
    "rizoxon/q17.png",
    "rizoxon/q18.png",
    "rizoxon/q19.png",
    "rizoxon/q21.png",
    "rizoxon/q22.png",
    "rizoxon/q23.png",
    "rizoxon/q24.png",
    "rizoxon/q25.png",
    "rizoxon/q26.png",
    "rizoxon/q27.png",
    "rizoxon/q28.png",
    "rizoxon/q29.png",
    "rizoxon/q30.png",
    "rizoxon/qUntitled.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => bir()));
                  },
                  child: Container(
                    width: 30,
                    height: 30,
                    child: Image.asset(
                      "rizoxon/money.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ShaderMask(
                  shaderCallback: (bounds) => LinearGradient(
                    colors: [Colors.red, Colors.blue],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(bounds),
                  child: Text(
                    "flutter",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: TextField(
                                controller: input,
                                keyboardType: TextInputType.number,
                                maxLength: 2,
                                onChanged: (value) {
                                  print(value);
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              actions: [
                                ElevatedButton(
                                    onPressed: () {
                                      nomvid();
                                      Navigator.pop(context);
                                    },
                                    child: Text("ok")),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("back"))
                              ],
                            ));
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    child: Lottie.asset("rizoxon/button.json"),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "HIS AGE",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Row(
                        children: [
                          Text(
                            "$m",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              " /100",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "OVERALL",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.red,
                              child: Icon(
                                Icons.heart_broken,
                                color: Colors.white,
                                size: 20,
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("34"),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "/100",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  ),
                                ],
                              ),
                              Text(
                                "Energy",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            child: Image.asset(
                              "rizoxon/gg.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("24"),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "/100",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  ),
                                ],
                              ),
                              Text(
                                "Smart",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            color: Colors.amber,
                            child: Image.asset(
                              "rizoxon/hh.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("24"),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "/100",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  ),
                                ],
                              ),
                              Text(
                                "Smart",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  height: 280,
                  color: Colors.amber,
                  child: Column(
                    children: [
                      Image.asset("rizoxon/jj.png"),
                      Lottie.asset("rizoxon/circul1.json"),
                    ],
                  ),
                )
              ],
            ),
            Text(
              "Old memory",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 15,
            ),
            CarouselSlider(
              items: nomlist.map((e) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(imagePath: e),
                      ),
                    );
                  },
                  child: Image.asset(e, fit: BoxFit.cover),
                );
              }).toList(),
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                reverse: false,
                autoPlayCurve: Curves.linear,
                height: 200,
                initialPage: 2,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.scale,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String imagePath;

  DetailScreen({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail View"),
      ),
      body: Center(
        child: Image.asset(imagePath),
      ),
    );
  }
}
