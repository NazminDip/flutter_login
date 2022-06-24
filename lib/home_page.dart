// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  get itemBuilder => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Welcome Home Page")),
      body: Column(children: [
        Stack(
          children: [
            Image.asset(
              'images/bg.jpg',
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.7),
              colorBlendMode: BlendMode.darken,
            ),
            const Positioned(
              top: 15,
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  " 50% Discount offer today",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 160,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2017/08/02/01/01/living-room-2569325_960_720.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 160,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2017/08/02/01/01/living-room-2569325_960_720.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 160,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2017/08/02/01/01/living-room-2569325_960_720.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                width: 160,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2017/08/02/01/01/living-room-2569325_960_720.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2017/08/02/01/01/living-room-2569325_960_720.jpg'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2017/08/02/01/01/living-room-2569325_960_720.jpg'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2017/08/02/01/01/living-room-2569325_960_720.jpg'),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2017/08/02/01/01/living-room-2569325_960_720.jpg'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
