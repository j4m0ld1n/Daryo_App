import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_daryo_app/news_daryo.dart';

class Batafsil extends StatelessWidget {
  Batafsil({Key? key}) : super(key: key);

  // NewsDaryo news1 = newsList[1];

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<dynamic, dynamic>;
    // print(args);
    NewsDaryo news1 = args['news11'];
    // news1 = args!['news1'];
    return Scaffold(
      appBar: AppBar(
          title: Text(
        news1.title,
        style: TextStyle(
          fontSize: 24,
        ),
      )),
      body: Card(
        margin: EdgeInsets.zero,
        child: Column(
          children: [
            const Divider(
              height: 1.0,
              color: Colors.grey,
              thickness: 1.0,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 10.0,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    news1.type,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  // SizedBox(
                  //   width: 120,
                  // ),
                  Row(
                    children: [
                      Text(news1.time + ' | ' + news1.date + ' | '),
                      const Icon(
                        CupertinoIcons.eye,
                        color: Colors.blue,
                      ),
                      Text(
                        ' ' + news1.viewsCount.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                news1.title,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                news1.imageUrl,
                // width: 120,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                flex: 1,
                child: Text(news1.text),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.thumb_up_alt_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.thumb_down_alt_outlined),
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.blue,
                          Colors.blueAccent,
                          Colors.greenAccent,
                          Colors.lightGreen,
                        ],
                      )),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Share...',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
