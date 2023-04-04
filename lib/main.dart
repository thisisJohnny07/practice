import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(title: 'Simple UI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(children: [
          Row(children: [
            Container(
                color: Colors.red,
                height: 64,
                width: 64,
                margin: const EdgeInsets.only(
                  left: 16,
                  top: 16,
                )),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  color: Colors.blue,
                  height: 18,
                  width: 250,
                  margin: const EdgeInsets.only(
                    left: 16,
                    top: 16,
                  )),
              Container(
                  color: Colors.blue,
                  height: 12,
                  width: 200,
                  margin: const EdgeInsets.only(
                    left: 16,
                    top: 16,
                  ))
            ])
          ]),
          const SizedBox(height: 16),
          const Divider(height: 1.25),
          for (var i = 0; i < 4; i++) ...[
            const SizedBox(height: 16),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(children: [
                Container(
                    color: Colors.red,
                    height: 48,
                    width: 48,
                    margin: const EdgeInsets.only(left: 16)),
                Container(
                    color: Colors.blue,
                    height: 14,
                    width: 200,
                    margin: const EdgeInsets.only(left: 16)),
              ]),
              Container(
                  color: Colors.yellow,
                  height: 14,
                  width: 14,
                  margin: const EdgeInsets.only(right: 16))
            ])
          ],
          const SizedBox(height: 16),
          const Divider(height: 1.25),
          for (var i = 0; i < 3; i++) ...[
            const SizedBox(height: 16),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(children: [
                Container(
                    color: Colors.red,
                    height: 48,
                    width: 48,
                    margin: const EdgeInsets.only(left: 16)),
                Container(
                    color: Colors.blue,
                    height: 14,
                    width: 200,
                    margin: const EdgeInsets.only(left: 16)),
              ]),
              Container(
                  color: Colors.yellow,
                  height: 14,
                  width: 14,
                  margin: const EdgeInsets.only(right: 16))
            ])
          ]
        ]));
  }
}
