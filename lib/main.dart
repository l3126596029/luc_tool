import 'package:flutter/material.dart';
import 'public_methods.dart';

void main(List<String> args) {
  String? gameLocation = getGameLocation();
  if (gameLocation != null) {
    appData!.update("gameLocation", (value) => gameLocation);
  }
  runApp(const MyApp());
}

Map? appData = {
  "gameLocation": null,
};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lcu Tool",
      theme: ThemeData.light(),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("主页"),
      ),
      body: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
        child: Flex(
          direction: Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            //info
            Expanded(
                child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    print(appData?["gameLocation"]);
                  },
                  child: const Text("开启自动接受对局"),
                )
              ],
            )),
            Expanded(
                child: Container(
              color: Colors.lightGreen,
              child: const Text("Hello World"),
            )),
            Expanded(
                child: Container(
              color: Colors.lightGreen,
              child: const Text("Hello World"),
            )),
            Expanded(
                child: Container(
              color: Colors.lightGreen,
              child: const Text("Hello World"),
            )),
            Expanded(
                child: Container(
              color: Colors.lightGreen,
              child: const Text("Hello World"),
            )),
          ],
        ));
  }
}
