import 'package:flutter/material.dart';
import 'package:my_app/login_screen.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Utama(),
    );
  }
}

class Utama extends StatelessWidget {
  const Utama({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Text(
            'Welcome to flutter',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'You Have been missed',
          ),
          Center(
            child: Image.asset(
              'assets/images/developer.png',
              width: 310,
              height: 310,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 320,
            height: 40,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => login_screen()));
              },
              child: Text('Signin'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 178, 120, 192),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            child: Text(
              'or',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            width: 320,
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/google.png',
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Continue with google',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white70,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
