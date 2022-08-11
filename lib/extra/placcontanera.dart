import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/pages/secoundpage.dart';

class PlaceContainerr extends StatelessWidget {
  String imagePath;
  String imageDes;
  String imageTittle;
  String description;
  String tittle;
  PlaceContainerr(
      {Key? key,
      required this.imagePath,
      required this.imageDes,
      required this.imageTittle,
      required this.description,
      required this.tittle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecoundPagee(
                      descriptionImage: imageDes,
                      imagePathee: imagePath,
                      tittleImage: imageTittle),
                ));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      image: DecorationImage(
                          image: AssetImage(imagePath), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Positioned(
                      bottom: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              imageDes,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              imageTittle,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )
                          ],
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  description,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 2),
                child: Text(
                  tittle,
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
