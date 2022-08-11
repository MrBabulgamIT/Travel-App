import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/extra/placcontanera.dart';
import 'package:travel_app/extra/placehote.dart';
import 'package:travel_app/pages/secoundpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectindex = 0;
  List<IconData> _icon = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectindex = index;
        });
        print(_selectindex);
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: _selectindex == index
              ? Color.fromARGB(255, 220, 224, 217)
              : Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(
          _icon[index],
          color: _selectindex == index
              ? Theme.of(context).primaryColor
              : Color(0xFFB4C1C4),
          size: 25,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30),
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 100, left: 20),
              child: Text(
                "What would you like to find",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildIcon(0),
                _buildIcon(1),
                _buildIcon(2),
                _buildIcon(3),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Top Destination",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                            color: Theme.of(context).accentColor),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        PlaceContainerr(
                            imagePath: 'photos/delle.jpg',
                            imageDes: 'Delle Prak',
                            imageTittle: 'India',
                            description: '3 activation',
                            tittle:
                                "this is indian capital city.He is bigest city."),
                        SizedBox(
                          width: 20,
                        ),
                        PlaceContainerr(
                            imagePath: 'photos/dellee.jpg',
                            imageDes: 'Dhaka Prak',
                            imageTittle: 'Bangladesh',
                            description: '3 activation',
                            tittle: "this is  capital city.He is bigest city."),
                        SizedBox(
                          width: 20,
                        ),
                        PlaceContainerr(
                            imagePath: 'photos/home.jpg',
                            imageDes: 'Istabul Prak',
                            imageTittle: 'Paris',
                            description: '3 activation',
                            tittle: "this is  capital city.He is bigest city."),
                        SizedBox(
                          width: 20,
                        ),
                        PlaceContainerr(
                            imagePath: 'photos/macca.webp',
                            imageDes: 'Macca Soref',
                            imageTittle: 'Maccha',
                            description: '3 activation',
                            tittle: "this is  capital city.He is bigest city."),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Find Hotel Room",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                            color: Theme.of(context).accentColor),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        PlaceHotel(
                            imagePath: 'photos/hotel_1.jpg',
                            imageDes: 'Paris Hotel',
                            imageTittle: 'Paris',
                            description: '3 Room',
                            tittle:
                                "this is Bigest Hotel in city.He is bigest city."),
                        SizedBox(
                          width: 20,
                        ),
                        PlaceHotel(
                            imagePath: 'photos/hotel_4.jpg',
                            imageDes: 'New Avila Hotel',
                            imageTittle: 'USA',
                            description: '1 Room',
                            tittle:
                                "this is Bigest Hotel in city.He is bigest city."),
                        SizedBox(
                          width: 20,
                        ),
                        PlaceHotel(
                            imagePath: 'photos/hotel.jpg',
                            imageDes: 'Istabul hotel',
                            imageTittle: 'Paris',
                            description: '2 room',
                            tittle:
                                "this is Bigest Hotel in city.He is bigest city."),
                        SizedBox(
                          width: 20,
                        ),
                        PlaceHotel(
                            imagePath: 'photos/hotel_5.jpg',
                            imageDes: 'Istabul hotel',
                            imageTittle: 'Paris',
                            description: '1 room',
                            tittle:
                                "this is Bigest Hotel in city.He is bigest city."),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
