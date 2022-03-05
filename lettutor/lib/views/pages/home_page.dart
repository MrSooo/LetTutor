import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.blue,
                  Colors.red,
                ],
              )),
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome to LetTutor",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 40,
                        width: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {
                              // Navigator.pushReplacement(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => homeScreen(),
                              //   ),
                              // );
                            },
                            child: const Text(
                              'Book a lesson',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Recommended Tutors",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      decoration: TextDecoration.underline),
                ),
                Spacer(),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all ❯",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                          color: Colors.blue),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              child: CircleAvatar(
                                radius: 30, // Image radius
                                backgroundImage: NetworkImage('imageUrl'),
                              ),
                            ),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Tutor"),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                        Icon(
                                          Icons.star_outline,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    Container(
                                      padding: const EdgeInsets.all(5.0),
                                      decoration: BoxDecoration(
                                          color: Colors.blue[50],
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          border: Border.all(
                                              color: Colors.blueAccent)),
                                      child: Text(
                                        'English',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    )
                                  ]),
                            )),
                            SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: FavoriteButton(
                                  valueChanged: (_) {},
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                            width: double.infinity,
                            child: Flexible(
                              child: Text(
                                "propertyModel.propertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddress",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 4,
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              child: CircleAvatar(
                                radius: 30, // Image radius
                                backgroundImage: NetworkImage('imageUrl'),
                              ),
                            ),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Tutor"),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                        Icon(
                                          Icons.star_outline,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    Container(
                                      padding: const EdgeInsets.all(5.0),
                                      decoration: BoxDecoration(
                                          color: Colors.blue[50],
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          border: Border.all(
                                              color: Colors.blueAccent)),
                                      child: Text(
                                        'English',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    )
                                  ]),
                            )),
                            SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: FavoriteButton(
                                  valueChanged: (_) {},
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                            width: double.infinity,
                            child: Flexible(
                              child: Text(
                                "propertyModel.propertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddress",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 4,
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              child: CircleAvatar(
                                radius: 30, // Image radius
                                backgroundImage: NetworkImage('imageUrl'),
                              ),
                            ),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Tutor"),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                        Icon(
                                          Icons.star_outline,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    Container(
                                      padding: const EdgeInsets.all(5.0),
                                      decoration: BoxDecoration(
                                          color: Colors.blue[50],
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          border: Border.all(
                                              color: Colors.blueAccent)),
                                      child: Text(
                                        'English',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    )
                                  ]),
                            )),
                            SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: FavoriteButton(
                                  valueChanged: (_) {},
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                            width: double.infinity,
                            child: Flexible(
                              child: Text(
                                "propertyModel.propertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddresspropertyAddress",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 4,
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
