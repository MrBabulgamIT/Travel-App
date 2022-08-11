import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SecoundPagee extends StatelessWidget {
  final String imagePathee;
  final String descriptionImage;
  final String tittleImage;

  const SecoundPagee(
      {Key? key,
      required this.descriptionImage,
      required this.imagePathee,
      required this.tittleImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(imagePathee), fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  descriptionImage,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  tittleImage,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: AutoSizeText(
                    "A hotel is an establishment that provides paid lodging on a short-term basis. Facilities provided inside a hotel room may range from a modest-quality mattress in a small room to large suites with bigger, higher-quality beds, a dresser, a refrigerator and other kitchen facilities, upholstered chairs, a flat screen television, and en-suite bathrooms. Small, lower-priced hotels may offer only the most basic guest services and facilities. Larger, higher-priced hotels may provide additional guest facilities such as a swimming pool, business centre (with computers, printers, and other office equipment), childcare, conference and event facilities, tennis or basketball courts, gymnasium, restaurants, day spa, and social function services.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    minFontSize: 20,
                    stepGranularity: 10,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
