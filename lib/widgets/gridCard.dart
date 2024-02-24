import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  final String per;
  final String save;
  final String txt;

  const GridCard({
    super.key,
    required this.per,
    required this.save,
    required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Stack(
        children: [
          Container(
            height: height * 0.25,
            width: width * 0.3,
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.12,
                  width: width * 0.3,
                  child: Image.asset("assets/cos.jpg"),
                ),
                Text(txt),
                Text("Me Consiller"),
                Text(
                  "sav $save",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              right: 2,
              child: Container(
                width: 35,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Center(
                  child: Text(
                    per,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
