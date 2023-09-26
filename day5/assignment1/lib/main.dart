import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: PageMenu());
  }
}

class PageMenu extends StatelessWidget {
  const PageMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page1()),
                );
              },
              child: const Text('Go to Page 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Page2()),
                );
              },
              child: const Text('Go to Page 2'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Page3()),
                );
              },
              child: const Text('Go to Page 3'),
            ),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  Page1({super.key});

  final animalList = ['강아지', '고양이', '앵무새', '토끼', '오리', '거위', '원숭이'];
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: ListView.builder(
          controller: _scrollController,
          itemCount: animalList.length,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 300,
              child: ListTile(
                title: Center(
                  child: Text(
                    animalList[index],
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        },
        child: const Icon(Icons.vertical_align_top),
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({super.key});

  // ...

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final TextEditingController _textEditingController = TextEditingController();
  String _inputValue = '';

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Page 2'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _textEditingController,
              onChanged: (value) {
                setState(() {
                  _inputValue = value;
                });
              },
            ),
            Text(_inputValue),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _textEditingController.clear();
            setState(() {
              _inputValue = '';
            });
          },
          child: const Icon(Icons.close),
        ));
  }
}

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  bool _isSunOn = false;
  bool _isMoonOn = false;
  bool _isStarOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3'),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.sunny,
              color: _isSunOn ? Colors.red : null,
            ),
            title: const Text('Sun'),
            trailing: IconButton(
              icon: const Icon(Icons.keyboard_arrow_right),
              onPressed: () {
                setState(
                  () {
                    _isSunOn = !_isSunOn;
                  },
                );
              },
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.nightlight_round,
              color: _isMoonOn ? Colors.yellow : null,
            ),
            title: const Text('Moon'),
            trailing: IconButton(
              icon: const Icon(Icons.keyboard_arrow_right),
              onPressed: () {
                setState(
                  () {
                    _isMoonOn = !_isMoonOn;
                  },
                );
              },
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.star,
              color: _isStarOn ? Colors.yellow : null,
            ),
            title: const Text('Star'),
            trailing: IconButton(
              icon: const Icon(Icons.keyboard_arrow_right),
              onPressed: () {
                setState(
                  () {
                    _isStarOn = !_isStarOn;
                  },
                );
              },
            ),
          ),
          TextField(
            onSubmitted: (value) {
              setState(() {
                if (value == "태양") {
                  _isSunOn = !_isSunOn;
                }
                if (value == "달") {
                  _isMoonOn = !_isMoonOn;
                }
                if (value == "별") {
                  _isStarOn = !_isStarOn;
                }
              });
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter your name',
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: () => setState(() {
          _isSunOn = false;
          _isMoonOn = false;
          _isStarOn = false;
        }),
      ),
    );
  }
}
