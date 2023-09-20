import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Column(
                  children: [
                    Text('오늘의 하루는',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    Text(
                      '어땠나요?',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Center(
                  child: SizedBox(
                    height: 200.0,
                    width: 300,
                    child: PageView(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.black, Colors.white],
                            ),
                          ),
                          child: const Center(
                              child: Text(
                            '우울함',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.orange, Colors.yellow],
                            ),
                          ),
                          child: const Center(
                              child: Text(
                            '행복함',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.blue, Colors.green],
                            ),
                          ),
                          child: const Center(
                              child: Text(
                            '상쾌함',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(),
                Container(
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipOval(
                          child: Image.network(
                            'https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=1060&t=st=1695190818~exp=1695191418~hmac=7c306611073209aa450e74f9b9e750aaac16b00072f51b97a8c3c1df81ceae34',
                            width: 80.0,
                            height: 80.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '라이언',
                              style: TextStyle(
                                  fontSize: 22.0, color: Colors.white),
                            ),
                            Text(
                              '게임개발\nC#,Unity',
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
