import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:getwidget/size/gf_size.dart';
import 'package:lettutor/views/login_screen.dart';

class signupScreen extends StatefulWidget {
  const signupScreen({Key? key}) : super(key: key);

  @override
  _signupScreenState createState() => _signupScreenState();
}

class _signupScreenState extends State<signupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => loginScreen(),
              ),
            )
          },
        ),
        title: const Text(
          'Sign up',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 60,
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            BorderSide(color: Colors.blueAccent, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      hintText: 'Name',
                      labelText: 'Full name',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    style: TextStyle(fontSize: 20),
                    keyboardType: TextInputType.text,
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 60,
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            BorderSide(color: Colors.blueAccent, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      hintText: 'example@gmal.com',
                      labelText: 'E-mail',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    style: TextStyle(fontSize: 20),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 60,
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            BorderSide(color: Colors.blueAccent, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      hintText: '••••••••',
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    style: TextStyle(fontSize: 20),
                    obscureText: true,
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 60,
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            BorderSide(color: Colors.blueAccent, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      hintText: '••••••••',
                      labelText: 'Comfirm password',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    style: TextStyle(fontSize: 20),
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.fromLTRB(
                      0, 0, MediaQuery.of(context).size.height * 0.05, 0),
                  child: SizedBox(
                    height: 55,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Register',
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
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Or continue with',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GFIconButton(
                      onPressed: () {},
                      shape: GFIconButtonShape.standard,
                      icon: Image.network(
                          'http://pngimg.com/uploads/google/google_PNG19635.png',
                          fit: BoxFit.cover),
                      type: GFButtonType.outline,
                      size: GFSize.MEDIUM,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GFIconButton(
                      onPressed: () {},
                      shape: GFIconButtonShape.standard,
                      icon: Icon(Icons.facebook),
                      type: GFButtonType.outline,
                      size: GFSize.MEDIUM,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GFIconButton(
                      onPressed: () {},
                      shape: GFIconButtonShape.standard,
                      icon: Icon(
                        Icons.phone_iphone,
                        color: Colors.black,
                      ),
                      type: GFButtonType.outline,
                      size: GFSize.MEDIUM,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => loginScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'Log in',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ]),
              ]),
        ),
      ),
    );
  }
}
