import 'package:day11/pages/loginpage.dart';
import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Login()));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assests/images/background.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Container(
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, colors: [
                  // ignore: deprecated_member_use
                  Colors.black.withOpacity(.8),
                  // ignore: deprecated_member_use
                  Colors.black.withOpacity(.2),
                ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "What you would like to find?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15),
                            hintText: "Search for cities, places ..."),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Best Destination",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(
                            image: 'assests/images/canada.jpg',
                            title: 'Canada'),
                        makeItem(
                            image: 'assests/images/Italy.jpg', title: 'Italy'),
                        makeItem(
                            image: 'assests/images/greece.jpg',
                            title: 'Greece'),
                        makeItem(
                            image: 'assests/images/united-states.jpg',
                            title: 'United States')
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Best Hotels",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(
                            image: 'assests/images/united-states.jpg',
                            title: 'Canada'),
                        makeItem(
                            image: 'assests/images/greece.jpg', title: 'Italy'),
                        makeItem(
                            image: 'assests/images/Italy.jpg', title: 'Greece'),
                        makeItem(
                            image: 'assests/images/canada.jpg',
                            title: 'United States')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Popular",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(
                            image: 'assests/images/greece.jpg',
                            title: 'Greece'),
                        makeItem(
                            image: 'assests/images/united-states.jpg',
                            title: 'United States'),
                        makeItem(
                            image: 'assests/images/Italy.jpg', title: 'Italy'),
                        makeItem(
                            image: 'assests/images/canada.jpg',
                            title: 'Canada'),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeItem({image, title}) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                // ignore: deprecated_member_use
                Colors.black.withOpacity(.8),
                // ignore: deprecated_member_use
                Colors.black.withOpacity(.2),
              ])),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
