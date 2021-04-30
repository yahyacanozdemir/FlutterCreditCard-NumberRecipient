import 'package:flutter/material.dart';
import 'package:seminer_application/card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CreditCardExample(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "User Settings",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w800),
            ),       
            Card(
              elevation: 25,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                width: 400,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(Icons.person),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bursa Teknik Üniversitesi",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Bilgisayar Mühendisliği",
                              style: TextStyle(
                                color: Colors.grey.shade300,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text("846"),
                            SizedBox(
                              height: 2,
                            ),
                            Text("Collect"),
                          ],
                        ),
                        Column(
                          children: [
                            Text("846"),
                            SizedBox(
                              height: 2,
                            ),
                            Text("Collect"),
                          ],
                        ),
                        Column(
                          children: [
                            Text("846"),
                            SizedBox(
                              height: 2,
                            ),
                            Text("Collect"),
                          ],
                        ),
                        Column(
                          children: [
                            Text("846"),
                            SizedBox(
                              height: 2,
                            ),
                            Text("Collect"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(Icons.money),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text("Collect"),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(Icons.shop),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text("Collect"),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(Icons.message),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text("Collect"),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(Icons.access_alarm),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text("Collect"),
                  ],
                ),
              ],
            ),          
            Container(
              width: 400,
              height: 75,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: Icon(Icons.location_on),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 17),
                      Text(
                        "Adress",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Ensure your harvesting address",
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),          
            Container(
              width: 400,
              height: 75,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: Icon(Icons.location_on),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 17),
                      Text(
                        "Adress",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Ensure your harvesting address",
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),        
            Container(
              width: 400,
              height: 75,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: Icon(Icons.location_on),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 17),
                      Text(
                        "Adress",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Ensure your harvesting address",
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),           
            Container(
              width: 400,
              height: 75,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: Icon(Icons.location_on),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 17),
                      Text(
                        "Adress",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Ensure your harvesting address",
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
