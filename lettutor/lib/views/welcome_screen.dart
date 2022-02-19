import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class welcome_screen extends StatelessWidget {
  const welcome_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(20, 50, 0, 0),
          child: Row(
            children: const [
              SizedBox(
                height: 80,
                child: VerticalDivider(
                  color: Colors.blue,
                  thickness: 3,
                  indent: 0,
                  endIndent: 20,
                  width: 30,
                ),
              ),
              Text(
                "Let\nTutor",
                style: TextStyle(fontSize: 40, color: Colors.blue),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, top: 20),
          child: Row(
            children: const [
              Text(
                "English\nLanguage Teaching",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20, right: 25),
          child: Image.asset(
            'assets/images/welcome_img.png',
          ),
        ),
        Container(
          alignment: AlignmentDirectional.topEnd,
          margin: const EdgeInsets.only(top: 20),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF42A5F5),
                          Color(0xFF1976D2),
                          Color(0xFF0D47A1),
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(12.0),
                    primary: Colors.white,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  icon: const Text('Get Started'),
                  label: const Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
