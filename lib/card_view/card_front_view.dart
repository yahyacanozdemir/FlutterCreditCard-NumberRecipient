import 'package:credit_card_app/card_model/card_number_model.dart';
import 'package:credit_card_app/card_view_model/card_number_view_model.dart';
import 'package:flutter/material.dart';


class CardFrontView extends StatefulWidget {
  @override
  _CardFrontViewState createState() => _CardFrontViewState();
}

class _CardFrontViewState extends State<CardFrontView> {
  CardNumberViewModel _cardNumberViewModel =  CardNumberViewModel();
  CardNumberModel _cardNumberModel = CardNumberModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        title: Text(_cardNumberModel.pageTitle,style:TextStyle(color: Colors.black)),
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
                children: [
                  SizedBox(width: 50,),
                  Text(_cardNumberModel.partTitle,style: TextStyle(color: Colors.blue.shade600,fontSize: 24,fontWeight: FontWeight.w800),),
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
                              _cardNumberModel.cardCompanyText,
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
                            Text(_cardNumberModel.cardNumberText,
                                style: TextStyle(color: Colors.grey.shade200))
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(_cardNumberViewModel.isNumberGroupEmpty(_cardNumberModel.numberGroup1),
                                style: TextStyle(color: Colors.grey.shade200)),
                            SizedBox(
                              width: 20,
                            ),
                            Text(_cardNumberViewModel.isNumberGroupEmpty(_cardNumberModel.numberGroup2),
                                style: TextStyle(color: Colors.grey.shade200)),
                            SizedBox(
                              width: 20,
                            ),
                            Text(_cardNumberViewModel.isNumberGroupEmpty(_cardNumberModel.numberGroup3),
                                style: TextStyle(color: Colors.grey.shade200)),
                            SizedBox(
                              width: 20,
                            ),
                            Text(_cardNumberViewModel.isNumberGroupEmpty(_cardNumberModel.numberGroup4),
                                style: TextStyle(color: Colors.grey.shade200)),
                          ],
                        ),
                        SizedBox(
                          height: 33,
                        ),
                        Row(
                          children: [
                            Text(_cardNumberModel.cardHolderText,
                                style: TextStyle(color: Colors.grey.shade200))
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(_cardNumberModel.cardHolderValue,
                                style: TextStyle(color: Colors.grey.shade200)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 55,
                    child: TextField(
                      maxLength: 4,
                      keyboardType: TextInputType.number,
                      onChanged: (String text) {
                        setState(() {
                          _cardNumberModel.numberGroup1 = _cardNumberViewModel.numberGroupWorks(text, _cardNumberModel.numberGroup1,context);
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
                          _cardNumberModel.numberGroup2 = _cardNumberViewModel.numberGroupWorks(text, _cardNumberModel.numberGroup2,context);
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
                          _cardNumberModel.numberGroup3 = _cardNumberViewModel.numberGroupWorks(text, _cardNumberModel.numberGroup3,context);
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
                          _cardNumberModel.numberGroup4 = _cardNumberViewModel.numberGroupWorks(text, _cardNumberModel.numberGroup4,context);
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
