import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
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
  String errorMessage = "";

  @override
  void dispose() {
    input.dispose();
    super.dispose();
  }

  Future<void> nomvid(BuildContext context) async {
    if (input.text.isEmpty) {
      setState(() {
        errorMessage = "Please enter a value.";
      });
    } else {
      await saveToFile(input.text);
      String fileText = await readFromFile();
      setState(() {
        m = fileText;
        errorMessage = "";
        Navigator.pop(context); // Close dialog if input is valid
      });
    }
  }

  Future<void> saveToFile(String text) async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/input_text.txt');
    await file.writeAsString(text);
  }

  Future<String> readFromFile() async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/input_text.txt');
    return await file.readAsString();
  }

  List<String> nomlist = [
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
                    width: 40,
                    height: 40,
                    child: Image.asset(
                      "rizoxon/money.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ShaderMask(
                  shaderCallback: (bounds) => LinearGradient(
                    colors: [
                    const Color.fromARGB(255, 33, 37, 243) ,
                      Colors.green
                    ],
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
                      builder: (context) => StatefulBuilder(
                        builder: (context, setState) {
                          return AlertDialog(
                            title: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextField(
                                  controller: input,
                                  keyboardType: TextInputType.number,
                                  maxLength: 2,
                                  onChanged: (value) {
                                    setState(() {
                                      errorMessage =
                                          ""; // Clear error message when typing
                                    });
                                  },
                                  decoration: InputDecoration(
                                    labelText: "enter your age",
                                    border: OutlineInputBorder(),
                                    errorText: errorMessage.isNotEmpty
                                        ? errorMessage
                                        : null,
                                  ),
                                ),
                              ],
                            ),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  // Call the validation function
                                  nomvid(context);
                                  setState(() {
                                    // Trigger rebuild to show updated error message
                                  });
                                },
                                child: Text("OK"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context); // Close dialog
                                },
                                child: Text("BACK"),
                              ),
                            ],
                          );
                        },
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    width: 40,
                    height: 40,
                    child: Lottie.asset("rizoxon/button.json"),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
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
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
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
                                  Text("34"),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "/100",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 13),
                                  ),
                                ],
                              ),
                              Text(
                                "Energy",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 35,
                            height: 35,
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
                                    width: 5,
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
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 35,
                            height: 35,
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
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 150,
                  height: 320,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 250, // Adjust height for the image
                          child: Image.asset(
                            "rizoxon/jj.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          width: 150,
                          height: 150,
                          child: Lottie.asset(
                            "rizoxon/circul1.json",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              "Old memory",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: CarouselSlider(
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
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(e, fit: BoxFit.cover),
                    ),
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
