import 'package:flutter/material.dart';
import 'package:flutter_tutorial_beginners2/description_page.dart';
import 'package:flutter_tutorial_beginners2/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color bgColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (bgColor == Colors.white) {
                  bgColor = Colors.black;
                } else {
                  bgColor = Colors.white;
                }
              });
            },
            icon: const Icon(Icons.color_lens),
          ),
        ],
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: ListTile(
                  title: Text(
                    "Flutter Mapp",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                title: const Text(
                  "Settings",
                ),
                leading: const Icon(Icons.settings),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ));
                },
                title: const Text(
                  "Logout",
                ),
                leading: const Icon(Icons.logout),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 5.0,
              ),
              child: Wrap(
                spacing: 10.0,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Money"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      foregroundColor: Colors.white,
                      shape: const StadiumBorder(),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Bitcoin"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      foregroundColor: Colors.white,
                      shape: const StadiumBorder(),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Stock Market"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      foregroundColor: Colors.white,
                      shape: const StadiumBorder(),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("House Market"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      foregroundColor: Colors.white,
                      shape: const StadiumBorder(),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Diamond hands"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      foregroundColor: Colors.white,
                      shape: const StadiumBorder(),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const DescriptionPage(
                          title: "How to get rich",
                          imagePath: 'images/einstein.jpeg',
                        )));
              },
              child: Container(
                clipBehavior: Clip.hardEdge,
                margin: EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 10.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                      spreadRadius: 2,
                      offset: Offset.fromDirection(2, 2),
                    )
                  ],
                ),
                width: double.infinity,
                child: Column(
                  children: [
                    Image.asset(
                      'images/einstein.jpeg',
                    ),
                    const ListTile(
                      tileColor: Colors.white,
                      title: Text('How to get rich'),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                clipBehavior: Clip.hardEdge,
                margin: EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 10.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                      spreadRadius: 2,
                      offset: Offset.fromDirection(2, 2),
                    )
                  ],
                ),
                width: double.infinity,
                child: Column(
                  children: [
                    Image.asset(
                      'images/einstein.jpeg',
                    ),
                    const ListTile(
                      tileColor: Colors.white,
                      title: Text('Should you learn flutter?'),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                clipBehavior: Clip.hardEdge,
                margin: EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 10.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                      spreadRadius: 2,
                      offset: Offset.fromDirection(2, 2),
                    )
                  ],
                ),
                width: double.infinity,
                child: Column(
                  children: [
                    Image.asset(
                      'images/einstein.jpeg',
                    ),
                    const ListTile(
                      tileColor: Colors.white,
                      title: Text('How to make mobile apps'),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
