import 'package:flutter/material.dart';

class feature_box extends StatelessWidget {
  final Color color;
  final String textHeading;
  final String textDescription;
  const feature_box({super.key, required this.color, required this.textDescription, required this.textHeading});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: (135/914.2857142857143)*height,
      width: (390/411.42857142857144)*width,
      margin: const EdgeInsets.all(8),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
                height: (110/914.2857142857143)*height,
                width: (370/411.42857142857144)*width,
                decoration: BoxDecoration(
                  color: Colors.yellow.shade900,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.fromBorderSide(BorderSide(
                    color: Colors.black,
                    width: (2/411.42857142857144)*width,
                  )),
                )
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: (120/914.2857142857143)*height,
              width: (385/411.42857142857144)*width,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.fromLTRB(8, 2, 8,2),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
              border: Border.fromBorderSide(BorderSide(
                color: Colors.black,
                width: (2/411.42857142857144)*width,
              )),

            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(textHeading,
                    style: TextStyle(
                      fontSize: 28,
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
                    fontSize: 15,
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
