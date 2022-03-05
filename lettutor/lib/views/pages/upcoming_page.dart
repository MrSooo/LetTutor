import 'package:flutter/material.dart';

class upcomingPage extends StatefulWidget {
  const upcomingPage({Key? key}) : super(key: key);

  @override
  State<upcomingPage> createState() => _upcomingPageState();
}

class _upcomingPageState extends State<upcomingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(
                  Icons.signal_cellular_nodata_outlined,
                  size: 50,
                  color: Colors.blue,
                ),
                Text(
                  "No Data",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
