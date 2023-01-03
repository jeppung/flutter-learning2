import 'package:flutter/material.dart';
import 'package:flutter_tutorial_beginners2/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial 2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome",
              style: TextStyle(
                color: Colors.white,
                fontSize: 55,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "To Jepp Blog",
              style: TextStyle(
                  color: Colors.white54,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            Image.asset('images/login.png', height: 300.0),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ));
              },
              child: const Text("Login"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.red,
                  minimumSize: const Size(300, 40)),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Register"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(300, 40)),
            )
          ],
        ),
      ),
    );
  }
}
