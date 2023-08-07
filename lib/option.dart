import 'package:flutter/material.dart';
import 'home.dart';
import 'confirmation.dart';

class option extends StatefulWidget {
  const option({Key? key}) : super(key: key);

  @override
  State<option> createState() => _optionState();
}

class _optionState extends State<option> {

  void _navigateToHome (BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => home()));
  }
  void _navigateToConfirmation (BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => confirmation()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Center(child: Text('Add Ons')),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            children: [
              Container(
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16))
                ),
                child: Row(
                  children: [
                    Check(),
                    SizedBox(
                      width: 20,
                    ),
                    Text('Cream')
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16))
                ),
                child: Row(
                  children: [
                    Check(),
                    SizedBox(
                      width: 20,
                    ),
                    Text('Ice')
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16))
                ),
                child: Row(
                  children: [
                    Check(),
                    SizedBox(
                      width: 20,
                    ),
                    Text('Less Sugar')
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: (){
                        _navigateToConfirmation(context);
                      },
                      child: Text('Purchase'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[200]
                      )
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(
                      onPressed: (){
                        _navigateToHome(context);
                      },
                      child: Text('Cancel'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[200]
                      )
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Check extends StatefulWidget {
  const Check({super.key});

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  bool _opt = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: _opt,
        onChanged: (value) {
          setState(() {
            _opt = value!;
          });
        }
    );
  }
}
