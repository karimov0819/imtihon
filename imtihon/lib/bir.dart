import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class bir extends StatefulWidget {
  const bir({super.key});

  @override
  State<bir> createState() => _birState();
}

class _birState extends State<bir> {
  List date = [];

  void fetchgate() async {
    final response = await http
        .get(Uri.parse("https://cbu.uz/uz/arkhiv-kursov-valyut/json/"));
    if (response.statusCode == 200) {
      final jsondate = json.decode(response.body);
      for (var item in jsondate) {
        date.add(Map<String, dynamic>.from(item));
      }
      setState(() {});
    } else {
      // Handle error if needed
    }
  }

  @override
  void initState() {
    super.initState();
    fetchgate();
    update();
  }

  DateTime cur = DateTime.now();
  dynamic yozuv = "";

  void update() {
    setState(() {
      cur = DateTime.now();
      yozuv = DateFormat("d-M-y").format(cur);
    });
    Future.delayed(Duration(seconds: 1), update);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Valyuta kurslari", style: TextStyle(color: Colors.white)),
            Text(yozuv, style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: date.length,
        itemBuilder: (context, index) {
          // Get the "Diff" value and parse it to determine its color and formatting
          final diff = date[index]["Diff"] as String;
          final diffValue = double.tryParse(diff) ?? 0.0;
          final diffColor = diffValue >= 0 ? Colors.green : Colors.red;
          final formattedDiff = diffValue >= 0 ? "+$diff" : diff;

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("updated day"),
                        Text("${date[index]["Date"]}"),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("1 ${date[index]["Ccy"]}"),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "${date[index]["CcyNm_UZ"]}",
                                style: TextStyle(color: Colors.blue),
                              ),
                              SizedBox(width: 3),
                              Text(
                                "(${date[index]["Code"]})",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                          Text(
                            "${date[index]["Rate"]}",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      Text(
                        formattedDiff,
                        style: TextStyle(color: diffColor),
                      ),
                    ],
                  ),
                  SizedBox(height: 22),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: double.infinity, height: 2, color: Colors.black),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
