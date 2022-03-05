import 'package:expandable_text/expandable_text.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class tutorDetailPage extends StatefulWidget {
  const tutorDetailPage({Key? key}) : super(key: key);

  @override
  State<tutorDetailPage> createState() => _tutorDetailPageState();
}

class _tutorDetailPageState extends State<tutorDetailPage> {
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
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 50, // Image radius
                        backgroundImage: NetworkImage('imageUrl'),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "atrun",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Row(
                                  children: [
                                    RatingBar.builder(
                                      initialRating: 5,
                                      ignoreGestures: true,
                                      itemSize: 20,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {},
                                    ),
                                    Text("(2)")
                                  ],
                                )),
                            const Text(
                              "🇻🇳 Việt Nam",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  ExpandableText(
                    'This example shows a message that was posted by a user. The username is always visible right before the text and tapping on it opens the user profile. The text is truncated after two lines and can be expanded by tapping on the link show more at the end or the text itself. After the text was expanded it cannot be collapsed again as no collapseText was provided. Links, @mentions and #hashtags in the text are styled differently and can be tapped to open the browser or the user profile.',
                    expandText: 'Show more',
                    collapseText: 'Show less',
                    maxLines: 1,
                    linkColor: Colors.blue,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //   builder: (context) => PrivateMessagePage(
                          //     name: widget.name,
                          //     avatar: widget.avatar,
                          //   ),
                          // ));
                        },
                        child: Column(
                          children: const [
                            Icon(
                              Icons.message_outlined,
                              color: Colors.blue,
                            ),
                            Text(
                              'Message',
                              style: TextStyle(color: Colors.blue),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                        child: Column(
                          children: [
                            Icon(
                              isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: isFavorite ? Colors.blue : Colors.blue,
                            ),
                            Text(
                              'Favorite',
                              style: TextStyle(
                                  color:
                                      isFavorite ? Colors.blue : Colors.blue),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) => BasicDialogAction(
                                    title: Text("OK"),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ));
                        },
                        child: Column(
                          children: const [
                            Icon(
                              Icons.report_outlined,
                              color: Colors.blue,
                            ),
                            Text(
                              'Report',
                              style: TextStyle(color: Colors.blue),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => BasicDialogAction(
                              title: Text("OK"),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          );
                        },
                        child: Column(
                          children: const [
                            Icon(
                              Icons.star_border_rounded,
                              color: Colors.blue,
                            ),
                            Text(
                              'Reviews',
                              style: TextStyle(color: Colors.blue),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: const BoxDecoration(color: Colors.black54),
                    child: const Center(child: Text("Mockup Video Player")),
                  ),
                  const Text(
                    'Languages',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: Wrap(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 8, 8),
                          child: Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                                color: Colors.blue[50],
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: Colors.blueAccent)),
                            child: Text(
                              'English',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 8, 8),
                          child: Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                                color: Colors.blue[50],
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: Colors.blueAccent)),
                            child: Text(
                              'English',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 8, 8),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'Specialities',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: Wrap(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 8, 8),
                          child: Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                                color: Colors.blue[50],
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: Colors.blueAccent)),
                            child: Text(
                              'English',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 8, 8),
                          child: Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                                color: Colors.blue[50],
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: Colors.blueAccent)),
                            child: Text(
                              'English',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 8, 8),
                          child: Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                                color: Colors.blue[50],
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: Colors.blueAccent)),
                            child: Text(
                              'English',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'Suggested courses',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: RichText(
                      text: const TextSpan(
                          text: 'Demo Course: ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                                text: 'Link',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal))
                          ]),
                    ),
                  ),
                  const Text(
                    'Interests',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Lorem ipsum sample text interest of tutor sample text is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic",
                      style: TextStyle(color: Colors.black45),
                    ),
                  ),
                  const Text(
                    'Teaching experience',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Sample text of teacher lorem ipsume is simply dummy text of the printing and typesetting industry. "
                      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic",
                      style: TextStyle(color: Colors.black45),
                    ),
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () => {},
                        child: Text('Today'),
                      ),
                      IconButton(
                          onPressed: () => {},
                          icon: const Icon(Icons.arrow_back_ios)),
                      IconButton(
                          onPressed: () => {},
                          icon: const Icon(Icons.arrow_forward_ios)),
                      const Text(
                        'Oct, 2021',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
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
