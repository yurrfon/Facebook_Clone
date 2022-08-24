import 'package:flutter/material.dart';
import 'feed_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text(''),
      ),
      body: Column(children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            height: 160,
            color: const Color(0xFF2F3C7E),
            child: Row(
              children: const [
                container_reel(
                    title_reel: 'Yurr Fonollera',
                    short_desc: '1 day ago',
                    image_reel: 'assets/images/1.jpg'),
                container_reel(
                    title_reel: 'Aljon Mutalib',
                    short_desc: '1 day ago ago',
                    image_reel: 'assets/images/2.jpg'),
                container_reel(
                    title_reel: 'Joshua De Guzman',
                    short_desc: '5 years ago',
                    image_reel: 'assets/images/3.jpg'),
                container_reel(
                    title_reel: 'Everyone',
                    short_desc: '5 years ago',
                    image_reel: 'assets/images/4.jpg'),
                container_reel(
                    title_reel: 'Yurr Fonollera',
                    short_desc: '5 years ago',
                    image_reel: 'assets/images/1.jpg'),
                container_reel(
                    title_reel: 'Mayor John Dalipe',
                    short_desc: '5 years ago',
                    image_reel: 'assets/images/5.jpg'),
                container_reel(
                    title_reel: 'Secretary Uy',
                    short_desc: '5 years ago',
                    image_reel: 'assets/images/6.jpg'),
              ],
            ),
          ),
        ),
        Container(
          color: Color.fromARGB(255, 250, 230, 238),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Posts',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      const FeedItem(
                        title:
                            'DICT Secretary Ivan Uy talks with Zamboanga City Mayor John Dalipe',
                        description: 'They talked about future plans for ICT',
                        image_data: 'assets/images/5.jpg',
                      ),
                      const FeedItem(
                        title:
                            'Photo: DICT Secretary Ivan Uy and Zamboanga City Mayor John Dalipe',
                        description: 'Congratulations!',
                        image_data: 'assets/images/6.jpg',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

class container_reel extends StatelessWidget {
  @override
  const container_reel(
      {required this.title_reel,
      required this.short_desc,
      required this.image_reel});

  final String title_reel;
  final String short_desc;
  final String image_reel;

  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 80,
      margin: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Color.fromARGB(255, 253, 220, 233)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image_reel),
          Text(style: TextStyle(fontSize: 9), title_reel),
          Text(style: TextStyle(fontSize: 9), short_desc),
        ],
      ),
    );
  }
}
