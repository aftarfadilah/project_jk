import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white,
    statusBarColor: Colors.black54,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: MyHomePage(title: 'Something something'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Center(
              child: Image(
                image: AssetImage('images/logo.png'),
                height: 50,
              )
            ),
          ),
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelColor: Colors.blue,
            indicatorColor: Colors.lightBlue,
            tabs: [
              Tab(text: 'Dosen'),
              Tab(text: 'Jadwal'),
              Tab(text: 'Tugas'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            DosenPageState(),
            JadwalPageState(),
            TugasPageState(),
          ],
        ),
      ),
    );
  }
}

class DosenPageState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: Text('Dosen'),
          ),
        )
    );
  }
}

class JadwalPageState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: Text('Jadwal'),
          ),
        )
    );
  }
}

class TugasPageState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: Text('Tugas'),
          ),
        )
    );
  }
}
