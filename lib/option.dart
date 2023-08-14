import 'package:flutter/material.dart';
import 'home.dart';
import 'confirmation.dart';

class option extends StatefulWidget {
  const option({Key? key}) : super(key: key);

  @override
  State<option> createState() => _optionState();
}

class _optionState extends State<option> {
  void _navigateToHome(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => home()));
  }

  void _navigateToConfirmation(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => confirmation()));
  }

  var iceCream = ["Vanilla", "Coffee", "Chocolate", "Strawberry"];

  String selectedValue = "Vanilla";
  int selectedOption = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Center(
            child: Image.asset(
          'assets/images/addons.png',
          height: 50,
        )),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            children: [
              TextFormField(
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Order Name',
                  hintText: 'Your Name'
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                child: Row(
                  children: [
                    Check(),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cream',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Sweet Full Cream Milk',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                child: Row(
                  children: [
                    Check(),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ice',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Ice to make your drink cold',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                child: Row(
                  children: [
                    Check(),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Less Sugar',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'If you dont like sweet',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                child: Row(
                  children: [
                    Check(),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Granola',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Chocolate Granola',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                child: Row(
                  children: [
                    Check(),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ice Cream',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'If you want extra things',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    DropdownButton(
                      value: selectedValue,
                      items: iceCream.map((item) {
                        return DropdownMenuItem(
                          child: Text(
                            item,
                            style: TextStyle(color: Colors.grey),
                          ),
                          value: item,
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          selectedValue = newValue as String;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Text("Cup Size"),
                  Row(
                    children: [
                      SizedBox(
                        width: 175,
                        child: ListTile(
                          title: Text("Medium"),
                          leading:Radio(
                              value: 1,
                              groupValue: selectedOption,
                              activeColor: Colors.brown,
                              fillColor: MaterialStatePropertyAll(Colors.brown),
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value!;
                                });
                              }),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: ListTile(
                          title: Text("Big"),
                          leading:Radio(
                              value: 2,
                              groupValue: selectedOption,
                              activeColor: Colors.brown,
                              fillColor: MaterialStatePropertyAll(Colors.brown),
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value!;
                                });
                              }),
                        ),
                      )
                    ],
                  ),


                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        _navigateToConfirmation(context);
                      },
                      child: Text('Purchase'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffe5af89))),
                  SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        _navigateToHome(context);
                      },
                      child: Text('Cancel'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff371a06))),
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
        });
  }
}
