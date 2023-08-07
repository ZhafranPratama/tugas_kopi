import 'package:flutter/material.dart';
import 'option.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  
  void _navigateToOption (BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => option()));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        iconTheme: IconThemeData(color: Colors.brown),
        shadowColor: Colors.transparent,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[200],
        child: ListView(
          children: [
            ListTile(
              title: const Text('Home'),
              onTap: () {
              },
            ),
            ListTile(
              title: const Text('Feed'),
              onTap: () {
              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
              },
            ),
          ],
        )
        ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('How do you like your coffee?',
            style: TextStyle(
              fontSize: 18
            ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Image.asset('assets/images/LongBlack.png', width: 60, height: 60,),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Long Black',
                        style: TextStyle(
                          fontWeight: FontWeight.w900
                        ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("\$4.50")
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: (){
                          _navigateToOption(context);
                        },
                        icon: Icon(Icons.arrow_forward))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Image.asset('assets/images/Latte.png', width: 60, height: 60,),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Latte',
                          style: TextStyle(
                              fontWeight: FontWeight.w900
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("\$4.00")
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: (){
                          _navigateToOption(context);
                        },
                        icon: Icon(Icons.arrow_forward))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Image.asset('assets/images/BlackCoffe.png', width: 60, height: 60,),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Espresso',
                          style: TextStyle(
                              fontWeight: FontWeight.w900
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("\$4.40")
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: (){
                          _navigateToOption(context);
                        },
                        icon: Icon(Icons.arrow_forward))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Image.asset('assets/images/IcedCoffe.png', width: 60, height: 60,),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Iced Coffee',
                          style: TextStyle(
                              fontWeight: FontWeight.w900
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("\$5.00")
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: (){
                          _navigateToOption(context);
                        },
                        icon: Icon(Icons.arrow_forward))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
