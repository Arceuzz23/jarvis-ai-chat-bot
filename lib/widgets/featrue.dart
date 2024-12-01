import 'package:flutter/material.dart';

class feature_box extends StatelessWidget {
  final Color color;
  final String textHeading;
  final String textDescription;
  const feature_box({super.key, required this.color, required this.textDescription, required this.textHeading});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 430,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
                height: 110,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.yellow.shade900,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.fromBorderSide(BorderSide(
                    color: Colors.black,
                    width: 2,
                  )),
                )
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
            height: 120,
            width: 410,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
              border: Border.fromBorderSide(BorderSide(
                color: Colors.black,
                width: 2,
              )),

            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(textHeading,
                    style: TextStyle(
                      fontSize: 30,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black26,
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
                      fontFamily: 'fredericka',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                      ),
                ),
                Text(textDescription,
                  style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black38,
                        offset: Offset(5.0, 5.0),
                      ),
                    ],
                    fontFamily: 'comfortaa',
                    color: Colors.black87,
                  ),
                ),
              ],
            ),

                    ),
          ),

        ],
      ),
    );
  }
}
