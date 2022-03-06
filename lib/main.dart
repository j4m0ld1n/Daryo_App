import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_daryo_app/batafsil.dart';
import 'package:flutter_application_daryo_app/news_daryo.dart';
// import 'package:flutter_application_daryo_app/widget_lib.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      title: 'Daryo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomePage(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => HomePage(),
        '/news': (ctx) => Batafsil(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // BuildContext? ctx;

  @override
  Widget newsCard(NewsDaryo news, BuildContext context) {
    return Card(
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
                  news.type,
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
                    Text(news.time + ' | ' + news.date + ' | '),
                    const Icon(
                      CupertinoIcons.eye,
                      color: Colors.blue,
                    ),
                    Text(
                      ' ' + news.viewsCount.toString(),
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
          Container(
            margin: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/news',
                    arguments: {'news11': news});
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      news.imageUrl,
                      // width: 120,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 0.0),
                      child: Text(
                        news.title,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Daryo App'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
          bottom: const TabBar(
            isScrollable: true,
            // labelColor: Colors.white,
            tabs: [
              Tab(
                text: 'SO`NGI YANGILIKAR',
              ),
              Tab(
                text: 'ASOSIY YANGILIKAR',
              ),
              Tab(
                text: 'ENG KO`P O`QILGAN YANGILIKAR',
              ),
              Tab(
                text: 'MAHALLIY YANGILIKAR',
              ),
              Tab(
                text: 'JAHON YANGILIKARI',
              ),
              Tab(
                text: 'SPORT YANGILIKARI',
              ),
            ],
          ),
        ),
        drawer: myDrawer(),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: newsList.length,
              itemBuilder: (BuildContext context, int index) {
                return newsCard(newsList[index], context);
              },
            ),
            ListView.builder(
              itemCount: newsList.length,
              itemBuilder: (BuildContext context, int index) {
                return newsCard(newsList[index], context);
              },
            ),
            ListView.builder(
              itemCount: newsList.length,
              itemBuilder: (BuildContext context, int index) {
                return newsCard(newsList[index], context);
              },
            ),
            ListView.builder(
              itemCount: newsList.length,
              itemBuilder: (BuildContext context, int index) {
                return newsCard(newsList[index], context);
              },
            ),
            ListView.builder(
              itemCount: newsList.length,
              itemBuilder: (BuildContext context, int index) {
                return newsCard(newsList[index], context);
              },
            ),
            ListView.builder(
              itemCount: newsList.length,
              itemBuilder: (BuildContext context, int index) {
                return newsCard(newsList[index], context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget myDrawer() {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const Text(
                    'Daryo',
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 10.0,
                      right: 0.0,
                      top: 10.0,
                      bottom: 10.0,
                    ),
                    padding: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.0,
                        color: Colors.white,
                      ),
                      borderRadius: const BorderRadius.horizontal(
                        left: Radius.circular(20.0),
                        right: Radius.zero,
                      ),
                      color: Colors.white,
                    ),
                    child: TextButton(
                      onPressed: () => {},
                      child: const Text(
                        'LOTINCHA',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.blue,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 0.0,
                      right: 10.0,
                      top: 10.0,
                      bottom: 10.0,
                    ),
                    padding: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.0,
                        color: Colors.white,
                      ),
                      borderRadius: const BorderRadius.horizontal(
                        left: Radius.zero,
                        right: Radius.circular(20.0),
                      ),
                      color: Colors.blue,
                    ),
                    child: TextButton(
                      onPressed: () => {},
                      child: const Text(
                        'КИРИЛЧА',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 4.0,
              ),
              Row(
                children: const [
                  Text(
                    'Toshkent',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    width: 120.0,
                  ),
                  Icon(
                    Icons.cloud_queue,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '+12.0\u00B0',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Divider(
                height: 1.0,
                color: Colors.white,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: Colors.white),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30.0)),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 1.0, horizontal: 6.0),
                      child: const Text(
                        '\$',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const Text(
                      '10769.78',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w300),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: Colors.white),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30.0)),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 1.0, horizontal: 6.0),
                      child: const Text(
                        '\u20AC',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const Text(
                      '12166.62',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w300),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: Colors.white),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30.0)),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 1.0, horizontal: 6.0),
                      child: const Text(
                        '\u20BD',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 10.0,
                    // ),
                    const Text(
                      '146.17',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ],
          ),
          margin: EdgeInsets.zero,
        ),
        ListTile(
          title: const Text('Qo`llanam ekranini ko`rsatish'),
          tileColor: Colors.amberAccent,
          onTap: () {},
        ),
        ListTile(
          title: const Text('So`ngi yangiliklar'),
          selectedColor: Colors.blueGrey.withOpacity(0.5),
          tileColor: Colors.blueGrey.withOpacity(0.5),
          onTap: () {
            // Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('Mahalliy'),
          onTap: () {},
        ),
        ListTile(
          title: const Text('Dunyo'),
          onTap: () {},
        ),
        ListTile(
          title: const Text('Texnologiyalar'),
          onTap: () {},
        ),
        const Divider(
          height: 1.0,
          color: Colors.grey,
        ),
        ListTile(
          title: const Text(
            'Tanlangan xabarlar',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {},
        ),
        const Divider(
          height: 1.0,
          color: Colors.grey,
        ),
        ListTile(
          title: const Text('Madaniyat'),
          onTap: () {},
        ),
        ListTile(
          title: const Text('Avto'),
          onTap: () {},
        ),
        ListTile(
          title: const Text('Sport'),
          onTap: () {},
        ),
        ListTile(
          title: const Text('Foto'),
          onTap: () {},
        ),
        ListTile(
          title: const Text('LifeStyle'),
          onTap: () {},
        ),
        ListTile(
          title: const Text('Kolomunistlar'),
          onTap: () {},
        ),
        ListTile(
          title: const Text('Afisha'),
          onTap: () {},
        ),
      ],
    ),
  );
}
