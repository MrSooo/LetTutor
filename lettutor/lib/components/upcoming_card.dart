import 'package:flutter/material.dart';

class upcomingCard extends StatefulWidget {
  const upcomingCard({Key? key}) : super(key: key);

  @override
  State<upcomingCard> createState() => _upcomingCardState();
}

class _upcomingCardState extends State<upcomingCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Color(0xfff1f1f1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "00:00",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "1 lesson",
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            margin: EdgeInsets.symmetric(vertical: 16),
            padding: EdgeInsets.all(12),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('imageUrl'),
                  radius: 24,
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    Text(
                      "VN" + " " + "Vietnam",
                      style: TextStyle(fontSize: 18),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.chat_bubble_outline,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Chat",
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    )
                  ],
                ))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            width: double.infinity,
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.symmetric(vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Lesson Time: 00:00 - 00:00",
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xfffafafa),
                  ),
                  margin: EdgeInsets.fromLTRB(0, 8, 0, 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                          color: Color(0xffe0e0e0),
                        ),
                        child: GestureDetector(
                          child: Row(
                            children: const [
                              Icon(Icons.arrow_drop_down),
                              Text("Request for lesson",
                                  style: TextStyle(fontSize: 18)),
                              Spacer(),
                              Flexible(
                                child: Text(
                                  "Edit request",
                                  style: TextStyle(color: Colors.blue),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      AnimatedContainer(
                        duration: const Duration(microseconds: 100),
                        child: Container(
                          height: 100,
                          padding: EdgeInsets.all(16),
                          child: Text(
                            "Currently there are no requests for this class. Please write down any requests for the teacher.",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff8399a7)),
                            maxLines: 3,
                          ),
                          width: double.infinity,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            width: double.infinity,
            child: Container(
              alignment: Alignment.centerRight,
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Join',
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
          )
        ],
      ),
    );
  }
}
