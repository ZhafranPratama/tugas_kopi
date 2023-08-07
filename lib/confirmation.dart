import 'package:flutter/material.dart';

class confirmation extends StatelessWidget {
  const confirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
          child: SingleChildScrollView(
            child: Column(children: [
              Image.asset(
                'assets/images/smile.png',
                width: 100,
                height: 100,
              ),
              SizedBox(
                height: 10,
              ),
              Text('Thank You!',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: Colors.brown[400]
              ))
            ]),
          ),
        ));
  }
}
