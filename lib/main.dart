import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('flexible text'),
        ),
        body: Column(
          children: [
            Flexible(
                flex: 1,
                child: Container(
                  child: Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.all(5),
                              color: Colors.green,
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.all(5),
                              color: Colors.purple,
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.all(5),
                              color: Colors.brown,
                            ))
                      ],
                    ),
                  ),
                )),
            Flexible(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.red,
                )),
            Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.blue,
                ))
          ],
        ),
      ),
    );
  }
}
