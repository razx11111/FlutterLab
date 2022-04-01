import 'package:flutter/material.dart';

import 'SecondScreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int nr = 41;
  bool isLiked = true;

  Column customButton(IconData icns, String info) {
    return Column(
      children: [
        IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => SecondScreen(),
              ),
            );
          },
          icon: Icon(icns),
          color: Colors.blue,
        ),
        Text(
          info,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  void likeLocation() {
    setState(() {
      if (isLiked) {
        nr++;
        isLiked = false;
      } else {
        nr--;
        isLiked = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset("assets/munte.jpg"),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Oeschinen Lake Campground",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "Kandersteg, Switzerland",
                        style: TextStyle(
                          fontSize: 19,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: likeLocation,
                        icon: Icon(
                          Icons.star,
                        ),
                        color: isLiked ? Colors.grey : Colors.red,
                      ),
                      Text(nr.toString()),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customButton(Icons.call, "CALL"),
                customButton(Icons.near_me, "ROUTE"),
                customButton(Icons.share, "SHARE"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur",
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => SecondScreen(),
                  ),
                );
              },
              child: Ink(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Nutpedia",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.blue,
                ),
              ),
              splashColor: Colors.black12,
            ),
          ],
        ),
      ),
    );
  }
}
