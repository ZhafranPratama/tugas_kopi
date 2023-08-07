import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
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
  void _navigateToHome(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 120),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/CoverIconCoffe.png',
                height: 300,
                width: 300,
              ),
              Text(
                'Brew Day',
                style: TextStyle(
                    color: Colors.brown[400],
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'How do you like your coffee?',
                style: TextStyle(color: Colors.brown[200], fontSize: 15),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                height: 60,
                child: ElevatedButton(
                    onPressed: () {
                      _navigateToHome(context);
                    },
                    child: Text('Enter Shop'),
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)
                                )
                            )
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
