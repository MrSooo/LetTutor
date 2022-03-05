import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:lettutor/views/pages/tutor_details.dart';

class tutorPage extends StatefulWidget {
  const tutorPage({Key? key}) : super(key: key);

  @override
  State<tutorPage> createState() => _tutorPageState();
}

class _tutorPageState extends State<tutorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black38, width: 1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Icon(Icons.search),
                  Expanded(
                    child: TextFormField(
                      style: TextStyle(fontSize: 18),
                      decoration: const InputDecoration(
                        isDense: true,
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(32),
                        color: Colors.grey[200]),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: Text("Tag 1"),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(32),
                        color: Colors.grey[200]),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: Text("Tag 1"),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(32),
                        color: Colors.grey[200]),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: Text("Tag 1"),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(32),
                        color: Colors.grey[200]),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: Text("Tag 1"),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(32),
                        color: Colors.grey[200]),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: Text("Tag 1"),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(32),
                        color: Colors.grey[200]),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: Text("Tag 1"),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(32),
                        color: Colors.grey[200]),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: Text("Tag 1"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => tutorDetailPage(),
                      ),
                    );
                  },
                  child: Card(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("Tutor"),
                                      SizedBox(height: 8),
                                      Row(children: [
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
                                        ),
                                        SizedBox(width: 5),
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
                                        ),
                                      ]),
                                    ]),
                              )),
                              SizedBox(
                                child: Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Row(
                                      children: [
                                        Text('5.0'),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 25,
                                        ),
                                      ],
                                    )),
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
                                    Row(children: [
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
                                      ),
                                      SizedBox(width: 5),
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
                                      ),
                                    ]),
                                  ]),
                            )),
                            SizedBox(
                              child: Padding(
                                  padding: const EdgeInsets.only(right: 5.0),
                                  child: Row(
                                    children: [
                                      Text('5.0'),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 25,
                                      ),
                                    ],
                                  )),
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
                                    Row(children: [
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
                                      ),
                                      SizedBox(width: 5),
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
                                      ),
                                    ]),
                                  ]),
                            )),
                            SizedBox(
                              child: Padding(
                                  padding: const EdgeInsets.only(right: 5.0),
                                  child: Row(
                                    children: [
                                      Text('5.0'),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 25,
                                      ),
                                    ],
                                  )),
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
                                    Row(children: [
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
                                      ),
                                      SizedBox(width: 5),
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
                                      ),
                                    ]),
                                  ]),
                            )),
                            SizedBox(
                              child: Padding(
                                  padding: const EdgeInsets.only(right: 5.0),
                                  child: Row(
                                    children: [
                                      Text('5.0'),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 25,
                                      ),
                                    ],
                                  )),
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
      ),
    ));
  }
}
