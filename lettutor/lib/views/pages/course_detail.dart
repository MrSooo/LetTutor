import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class courseDetailPage extends StatefulWidget {
  const courseDetailPage({Key? key}) : super(key: key);

  @override
  State<courseDetailPage> createState() => _courseDetailPageState();
}

class _courseDetailPageState extends State<courseDetailPage> {
  var isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(children: [
                      SizedBox(
                        height: 420,
                      ),
                      Image.network(
                        'https://camblycurriculumicons.s3.amazonaws.com/5e2b9a72db0da5490226b6b5?h=d41d8cd98f00b204e9800998ecf8427e',
                        fit: BoxFit.fill,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 270, 30, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "IELTS Speaking Part 1",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Practice answering Part 1 questions from past years' IELTS exams",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              child: SizedBox(
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      'Discover',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    margin: EdgeInsets.all(10),
                  ),
                  Text(
                    "Overview",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(children: [
                      Icon(Icons.question_mark_rounded,
                          color: Colors.red, size: 20),
                      Text("Why take this course",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20)),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 10),
                    child: Text(
                        "Feeling confident answering Part 1 questions will help you get off to a strong start on your IELTS speaking exam."),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(children: [
                      Icon(Icons.question_mark_rounded,
                          color: Colors.red, size: 20),
                      Text("What will you be able to do",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20)),
                    ]),
                  ),
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 8.0, left: 10, bottom: 8),
                      child: Text(
                          "You'll practice giving strong answers in Part 1, with tips and tricks recommended by real IELTS examiners.")),
                  Text(
                    "Experience Level",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, left: 10, right: 10),
                    child: Row(children: [
                      Icon(Icons.person_add_rounded,
                          color: Colors.blue, size: 20),
                      SizedBox(width: 8),
                      Text(
                        "Any level",
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      ),
                    ]),
                  ),
                  Text(
                    "Course Length",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, left: 10, bottom: 10),
                    child: Row(children: [
                      Icon(Icons.bookmark_border_rounded,
                          color: Colors.blue, size: 20),
                      SizedBox(width: 8),
                      Text(
                        "8 topics",
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      ),
                    ]),
                  ),
                  Text(
                    "List Topics",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("1. Holidays and Vacations",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18)),
                        Text("2. Art",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18)),
                        Text("3. Education",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18)),
                        Text("4. News and Media",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18)),
                        Text("5. Nature and Environment",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18)),
                        Text("6. Sports",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18)),
                        Text("7. Technology",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            //   child:
            // )
          ],
        ),
      ),
    );
  }
}
