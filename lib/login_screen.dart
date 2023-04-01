import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_app/main_screen.dart';

class login_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login_screen_extract(),
    );
  }
}

class login_screen_extract extends StatelessWidget {
  const login_screen_extract({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 204, 240),
      body: Column(
        children: [
          SizedBox(
            height: 90,
          ),
          Card(
            color: Color.fromARGB(255, 255, 255, 255),
            elevation: 4, // Tingkat efek bayangan
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7), // Radius sudut bingkai
            ),
            child: Container(
              width: double.infinity,
              height: 420,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 320, // set the width to 200
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    width: 320, // set the width to 200
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 320,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => main_screen()));
                      },
                      child: Text('Login apps'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 178, 120, 192),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
