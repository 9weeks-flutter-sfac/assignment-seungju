import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  int x = 1;
  int y = 1;

  showResultDialog(BuildContext context, var result) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            height: 150,
            child: Center(
                child: Text(
              "$result",
              style: const TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: const Text('Assignment 1')),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                const Text('x의 값은? '),
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'x의 값을 입력하세요',
                      labelText: 'x의 값을 입력하세요',
                    ),
                    onChanged: (value) {
                      x = int.parse(value);
                    },
                  ),
                ),
              ]),
              Row(children: [
                const Text('y의 값은? '),
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'y의 값을 입력하세요',
                      labelText: 'y의 값을 입력하세요',
                    ),
                    onChanged: (value) {
                      y = int.parse(value);
                    },
                  ),
                ),
              ]),
              ElevatedButton(
                onPressed: () {
                  showResultDialog(context, x + y);
                },
                child: const Text('더하기의 결과값은?'),
              ),
              ElevatedButton(
                onPressed: () {
                  showResultDialog(context, x * y);
                },
                child: const Text('곱하기의 결과값은?'),
              ),
              ElevatedButton(
                onPressed: () {
                  showResultDialog(context, x - y);
                },
                child: const Text('빼기의 결과값은?'),
              ),
              ElevatedButton(
                onPressed: () {
                  showResultDialog(context, x / y);
                },
                child: const Text('나누기의 결과값은?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
