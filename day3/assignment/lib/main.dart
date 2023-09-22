import 'package:flutter/material.dart';
import 'new_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: const ColorScheme.dark(),
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.navigate_before),
          title: const Text('My App'),
          elevation: 0,
          shape: const Border(
            bottom: BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.airplay),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
          ],
        ),
        body: ListView(
          children: const [
            NewWidget(
              image: 'assets/music_come_with_me.png',
              title: 'Come With Me',
              subtitle: 'Surfaces 및 salem ilse',
              duration: '3:00',
            ),
            NewWidget(
              image: 'assets/music_these_days.png',
              title: 'These days(feat. Jess Glynne, Macklemore & Dan Caplen)',
              subtitle: 'Rudimentalㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴ',
              duration: '3:25',
            ),
          ],
        ),
        bottomSheet: BottomSheet(
          onClosing: () {},
          builder: (context) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 60,
                  color: Colors.black,
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset('assets/music_you_make_me.png'),
                    ),
                    title: const Text('You make me'),
                    subtitle: const Text('DAY6'),
                    trailing: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.play_arrow),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.skip_next),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 1,
                  color: Colors.white60,
                  child: Container(
                    color: Colors.red,
                    height: 1,
                    width: 50,
                  ),
                ),
              ],
            );
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
          fixedColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '검색',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_music),
              label: '보관함',
            ),
          ],
        ),
      ),
    );
  }
}
