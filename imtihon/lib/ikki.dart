import 'package:flutter/material.dart';

class ikki extends StatefulWidget {
  const ikki({super.key});

  @override
  State<ikki> createState() => _ikkiState();
}

class _ikkiState extends State<ikki> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15))),
        width: 200,
        height: 200,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                  children: [
                    ElevatedButton(onPressed: (){}, child: Text("ok")),
                     ElevatedButton(onPressed: (){}, child: Text("back")),
                  ],
                ) ,
            ],
          ),
        ),
      ),
    );
  }
}
