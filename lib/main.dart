import 'package:flutter/material.dart';
import 'package:reusewidget/Widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Welcome"),
      ),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 8),
              child: Card1(
                  color: Colors.purple,
                  title: "Competitions",
                  Image: NetworkImage(
                      "https://media.defense.gov/2020/Jan/09/2002232153/-1/-1/0/200109-D-BD104-019.JPG"),
                  quote: "Like it or not,Life is a Competition"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 8),
              child: Card1(
                  color: Colors.blue,
                  title: "Success",
                  Image: NetworkImage(
                      "https://tse1.explicit.bing.net/th?id=OIP.-R9h3c9_vCO-AtbEdYiZjAHaE8&pid=Api&P=0&h=180"),
                  quote:
                      "It is better to fail in originality than to succeed in imitation"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 8),
              child: Card1(
                  color: Colors.pink,
                  title: "Consistency",
                  Image: NetworkImage(
                      "https://tse3.mm.bing.net/th?id=OIP.WZVtVOTXDDKC6SIu-LZxOgHaHa&pid=Api&P=0&h=180"),
                  quote: "Consistency is the hallmark of the unimaginative"),
            ),
          ],
        ),
      ),
    );
  }
}
