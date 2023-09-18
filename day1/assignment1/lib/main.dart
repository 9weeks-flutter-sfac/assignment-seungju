import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: const TextStyle(color: Colors.black),
              children: <TextSpan>[
                const TextSpan(
                    style: TextStyle(fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(text: '안녕하세요!\n'),
                      TextSpan(text: '간단하게 제 '),
                      TextSpan(
                        text: '소개',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 24,
                        ),
                      ),
                      TextSpan(text: '를 해보겠습니다\n\n'),
                      TextSpan(text: '먼저 저의 MBTI는'),
                      TextSpan(
                        text: 'INFJ',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 24,
                        ),
                      ),
                      TextSpan(text: '이고\n'),
                      TextSpan(text: '직업은 '),
                      TextSpan(
                        text: '개발자',
                        style: TextStyle(
                          color: Colors.lightGreen,
                          fontSize: 24,
                        ),
                      ),
                      TextSpan(text: '입니다\n\n'),
                    ]),
                const TextSpan(
                  text: '꿈',
                  style: TextStyle(
                    color: Colors.yellow,
                  ),
                ),
                const TextSpan(
                    style: TextStyle(decoration: TextDecoration.lineThrough),
                    children: <TextSpan>[
                      TextSpan(text: '은 없고요\n'),
                      TextSpan(text: '그냥 놀고싶습니다\n\n'),
                    ]),
                TextSpan(
                    style: TextStyle(
                      color: Colors.purple.shade400,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    text: '감사합니다'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
