import 'package:flutter/material.dart';

class CreditCardExample extends StatefulWidget {
  @override
  _CreditCardExampleState createState() => _CreditCardExampleState();
}

class _CreditCardExampleState extends State<CreditCardExample> {
  String numbers1 = "";
  String numbers2 = "";
  String numbers3 = "";
  String numbers4 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        title: Text("Payment Page",style:TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 20,
      ),
      body: Container(
        color: Colors.grey.shade200,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 50,),
                  Text("Card Details",style: TextStyle(color: Colors.blue.shade600,fontSize: 24,fontWeight: FontWeight.w800),),
                ],
              ),
              SizedBox(height: 10),
              Card(
                elevation: 20,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  width: 350,
                  height: 225,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.blue[400], Colors.blue[900]])),
                  child: Padding(
                    padding: const EdgeInsets.all(35.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "VISA",
                              style: TextStyle(
                                  color: Colors.grey.shade900,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text("Card Number",
                                style: TextStyle(color: Colors.grey.shade200))
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(numbers1 == "" ? "****" : numbers1,
                                style: TextStyle(color: Colors.grey.shade200)),
                            SizedBox(
                              width: 20,
                            ),
                            Text(numbers2 == "" ? "****" : numbers2,
                                style: TextStyle(color: Colors.grey.shade200)),
                            SizedBox(
                              width: 20,
                            ),
                            Text(numbers3 == "" ? "****" : numbers3,
                                style: TextStyle(color: Colors.grey.shade200)),
                            SizedBox(
                              width: 20,
                            ),
                            Text(numbers4 == "" ? "****" : numbers4,
                                style: TextStyle(color: Colors.grey.shade200)),
                          ],
                        ),
                        SizedBox(
                          height: 33,
                        ),
                        Row(
                          children: [
                            Text("Card Holder",
                                style: TextStyle(color: Colors.grey.shade200))
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text("Yahya Can Özdemir",
                                style: TextStyle(color: Colors.grey.shade200)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left:45.0,right: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 55,
                      child: TextField(
                        maxLength: 4,
                        keyboardType: TextInputType.number,
                        onChanged: (String text) {
                          setState(() {
                            if (!text.contains(".") &&
                                !text.contains(",") &&
                                !text.contains("-") &&
                                !text.contains(" ")) {
                              numbers1 = text;
                              if (text.length == 4)
                                FocusScope.of(context).nextFocus();
                            }
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 55,
                      child: TextField(
                        maxLength: 4,
                        keyboardType: TextInputType.number,
                        onChanged: (String text) {
                          setState(() {
                            if (!text.contains(".") &&
                                !text.contains(",") &&
                                !text.contains("-") &&
                                !text.contains(" ")) {
                              numbers2 = text;
                              if (text.length == 4)
                                FocusScope.of(context).nextFocus();
                              if (text == "")
                                FocusScope.of(context).previousFocus();
                            }
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 55,
                      child: TextField(
                        maxLength: 4,
                        keyboardType: TextInputType.number,
                        onChanged: (String text) {
                          setState(() {
                            if (!text.contains(".") &&
                                !text.contains(",") &&
                                !text.contains("-") &&
                                !text.contains(" ")) {
                              numbers3 = text;
                              if (text.length == 4)
                                FocusScope.of(context).nextFocus();
                              if (text == "")
                                FocusScope.of(context).previousFocus();
                            }
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 55,
                      child: TextField(
                        maxLength: 4,
                        keyboardType: TextInputType.number,
                        onChanged: (String text) {
                          setState(() {
                            if (!text.contains(".") &&
                                !text.contains(",") &&
                                !text.contains("-") &&
                                !text.contains(" ")) {
                              numbers4 = text;
                              if (text.length == 4)
                                FocusScope.of(context).unfocus();
                              if (text == "")
                                FocusScope.of(context).previousFocus();
                            }
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
