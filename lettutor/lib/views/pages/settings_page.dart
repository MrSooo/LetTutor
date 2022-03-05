import 'package:flutter/material.dart';
import 'package:lettutor/views/login_screen.dart';
import 'package:lettutor/views/profile_screen.dart';

class settingsPage extends StatefulWidget {
  const settingsPage({Key? key}) : super(key: key);

  @override
  State<settingsPage> createState() => _settingsPageState();
}

class _settingsPageState extends State<settingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const ProfilePage()),
                  // );
                },
                child: GestureDetector(
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => profileScreen(),
                      ),
                    ),
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: CircleAvatar(
                          radius: 30, // Image radius
                          backgroundImage: NetworkImage('imageUrl'),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Tu Le",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("ozaaluu@gmail.com")
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38, width: 1),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(Icons.person),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                            child: Text(
                          'View Feedbacks',
                          style: const TextStyle(fontSize: 16),
                        )),
                        const Icon(Icons.chevron_right)
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38, width: 1),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(Icons.menu),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                            child: Text(
                          'Booking History',
                          style: const TextStyle(fontSize: 16),
                        )),
                        const Icon(Icons.chevron_right)
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38, width: 1),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(Icons.history),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                            child: Text(
                          'Sessions History',
                          style: const TextStyle(fontSize: 16),
                        )),
                        const Icon(Icons.chevron_right)
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38, width: 1),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(Icons.settings),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                            child: Text(
                          'Advance Settings',
                          style: const TextStyle(fontSize: 16),
                        )),
                        const Icon(Icons.chevron_right)
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38, width: 1),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(Icons.web),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                            child: Text(
                          'Our Website',
                          style: const TextStyle(fontSize: 16),
                        )),
                        const Icon(Icons.chevron_right)
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38, width: 1),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(Icons.facebook_outlined),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                            child: Text(
                          'Facebook',
                          style: const TextStyle(fontSize: 16),
                        )),
                        const Icon(Icons.chevron_right)
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Version 1.0",
                  textAlign: TextAlign.end,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => loginScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'Log out',
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
        ),
      ),
    );
  }
}
