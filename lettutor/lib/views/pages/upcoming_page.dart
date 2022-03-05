import 'package:flutter/material.dart';
import 'package:lettutor/components/upcoming_card.dart';

class upcomingPage extends StatefulWidget {
  const upcomingPage({Key? key}) : super(key: key);

  @override
  State<upcomingPage> createState() => _upcomingPageState();
}

class _upcomingPageState extends State<upcomingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.message_outlined),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: SizedBox(
                    width: 120,
                    height: 120,
                    child: Image.network(
                      'https://icons.iconarchive.com/icons/paomedia/small-n-flat/1024/calendar-icon.png',
                    ),
                  )),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Schedule",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(color: Colors.grey, width: 3))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Here is a list of the sessions you have booked",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey)),
                          Text(
                              "You can track when the meeting starts, join the meeting with one click or can cancel the meeting before 2 hours",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey))
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          upcomingCard(),
          upcomingCard(),
          upcomingCard(),
        ],
      ),
    );
  }
}
