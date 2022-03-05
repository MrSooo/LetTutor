import 'package:flutter/material.dart';

class messagePage extends StatefulWidget {
  const messagePage({Key? key}) : super(key: key);

  @override
  State<messagePage> createState() => _messagePageState();
}

class _messagePageState extends State<messagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
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
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(
                Icons.message,
                size: 50,
                color: Colors.blue,
              ),
              Text(
                "No Reccent Chat",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}
