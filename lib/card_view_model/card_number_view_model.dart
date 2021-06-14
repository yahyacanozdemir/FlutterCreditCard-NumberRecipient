import 'package:flutter/material.dart';

class CardNumberViewModel {
  String numberGroupWorks(userText, numberGroup, context) {
    if (!userText.contains(".") &&
        !userText.contains(",") &&
        !userText.contains("-") &&
        !userText.contains(" ")) {
      numberGroup = userText;
      if (userText.length == 4) FocusScope.of(context).nextFocus();
      if (userText == "") FocusScope.of(context).previousFocus();
    }
    return numberGroup;
  }

  String isNumberGroupEmpty(numberGroup) {
    if (numberGroup == "") {
      return "****";
    } else {
      return numberGroup;
    }
  }

  
}
